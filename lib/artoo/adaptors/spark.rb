require 'artoo/adaptors/adaptor'
require 'http'

module Artoo
  module Adaptors
    # Connect to a spark device
    # @see device documentation for more information
    class Spark < Adaptor
      attr_reader :device_id, :access_token

      def initialize(params={})
        @device_id = params[:additional_params][:device_id]
        @access_token = params[:additional_params][:access_token]
        super
      end

      # Creates a connection with device
      # @return [Boolean]
      def connect
        super
      end

      # Name of device
      # @return [String]
      def firmware_name
        "spark"
      end

      # Version of device
      # @return [String]
      def version
        Artoo::Spark::VERSION
      end

      # GPIO - digital
      def digital_write(pin, level)
        url = device_url + "/digitalwrite"
        post(url, {:params => "#{pin},#{level.upcase}"})
      end

      def digital_read(pin)
        url = device_url + "/digitalread"
        post(url, {:params => pin})
      end
      
      # GPIO - analog
      def analog_write(pin, level)
        url = device_url + "/analogwrite"
        post(url, {:params => "#{pin},#{level.upcase}"})
      end

      def analog_read(pin)
        url = device_url + "/analogread"
        post(url, {:params => pin})
      end

      # GPIO - PWM
      def pwm_write(pin, level)
        analog_write(pin, level)
      end

      # GPIO - servo
      def servo_write(pin, angle)
        analog_write(pin, angle)
      end

      def post(url, data={})
        data[:access_token] = access_token
        HTTP.post(url, :form => data).response
      end

      def device_url
        "https://api.spark.io/v1/devices/#{device_id}"
      end
    end
  end
end

require 'artoo/adaptors/adaptor'

module Artoo
  module Adaptors
    # Connect to a spark device
    # @see device documentation for more information
    class Spark < Adaptor
      attr_reader :device

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

      end

      def digital_read(pin)
        value = nil
        value
      end
      
      # GPIO - analog
      # NOTE pins are numbered A0-A5, which translate to digital pins 14-19
      def analog_read(pin)
        value = 0
        value
      end

      # GPIO - PWM
      def pwm_write(pin, level)
        analog_write(pin, level)
      end

      # GPIO - servo
      def servo_write(pin, angle)
        analog_write(pin, angle)
      end
    end
  end
end

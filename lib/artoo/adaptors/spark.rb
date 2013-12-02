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

      # Closes connection with device
      # @return [Boolean]
      def disconnect
        super
      end

      # Name of device
      # @return [String]
      def name
        "spark"
      end

      # Version of device
      # @return [String]
      def version
        Artoo::Spark::VERSION
      end

      # Uses method missing to call device actions
      # @see device documentation
      def method_missing(method_name, *arguments, &block)
        device.send(method_name, *arguments, &block)
      end
    end
  end
end

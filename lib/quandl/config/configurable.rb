require 'active_support/inflector'

module Quandl
  module Hub
    module Configurable
      def configuration
        @configuration ||= Quandl::Hub::Config.new(file_name, configuration_options)
      end

      private

      def file_name
        defined?(name) ? name.underscore : self.class.name.underscore
      end

      def configuration_options
        {}
      end
    end
end
end

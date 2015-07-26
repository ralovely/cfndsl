module CfnDsl
  module Config
    class Component
      attr_reader :name, :data, :default_extras

      def initialize(name, data, default_extras = {})
        @name           = name
        @data           = data
        @default_extras = default_extras
      end

      def extras
        data.fetch("extras", default_extras)
      end

    end
  end
end

module Dali
  class LogstashEvent

    class << self
      attr_reader :parser_classes
    end

    @parser_classes = []

    def self.inherited( subclass )
      LogstashEvent.parser_classes << subclass
    end

    def self.print_line( log )
      parser = parser_for(log)
      return nil unless parser

      parser.print_line(log)
    end

    def self.parser_for( log )
      parser_class = LogstashEvent.parser_classes.find do |klass|
        klass.can_parse?(log)
      end

      return parser_class.new(log) if parser_class
      nil
    end

  end
end

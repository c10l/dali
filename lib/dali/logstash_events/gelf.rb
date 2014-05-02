module Dali
  class GelfLogstashEvent < LogstashEvent

    def self.can_parse?(log)
      log['tags'].include? 'gelf'
    end

    def initialize(log)
      @log = JSON::parse(log)
    end

    def print_line(log)
    end

  end
end

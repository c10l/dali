#
# Example syslog message:
#
# {"message"=>
#   "[origin software=\"rsyslogd\" swVersion=\"5.8.10\" x-pid=\"24491\" x-info=\"http://www.rsyslog.com\"] exiting on signal 15.",
#  "@version"=>"1",
#  "@timestamp"=>"2014-05-01T15:53:43.000Z",
#  "host"=>"man00",
#  "tags"=>["syslog"],
#  "syslog_pri"=>"46",
#  "syslog_program"=>"rsyslogd",
#  "syslog_severity_code"=>6,
#  "syslog_facility_code"=>5,
#  "syslog_facility"=>"syslogd",
#  "syslog_severity"=>"informational"}

require 'json'

module Dali
  class SyslogLogstashEvent < LogstashEvent

    def self.can_parse?(log)
      log['tags'].include? 'syslog'
    end

    def initialize(log)
      @log = JSON::parse(log)
    end

    def print_line(log)
    end

  end
end

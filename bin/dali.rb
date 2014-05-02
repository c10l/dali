#!/usr/bin/env ruby

app_root = File.dirname(File.expand_path("__FILE__"))
require File.join [ app_root, "lib/dali" ]

require 'pry-debugger';binding.pry

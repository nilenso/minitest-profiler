require "minitest/profiler/version"
require 'active_support'
require 'minitest'

module Minitest
  module Profiler
    extend ActiveSupport::Concern

    included do
      @@minitest_profiler_report = []

      setup do
        @start_time = Time.now
      end

      teardown do
        end_time = Time.now
        time_taken = end_time - @start_time
        @@minitest_profiler_report << {time: time_taken, name: @NAME}
      end
    end

    Minitest.after_run do
     puts
     puts "-----------------------------------------"
     puts "Timing Information for the Last Test Run"
     puts "-----------------------------------------"
     puts
     puts "Time, Test Name"
     puts
     @@minitest_profiler_report.sort_by { |timing| timing[:time] }.reverse.each { |timing| puts "#{timing[:time]}, #{timing[:name]}" }
    end
  end
end

class ActiveSupport::TestCase
  include Minitest::Profiler
end

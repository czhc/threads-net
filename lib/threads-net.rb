# frozen_string_literal: true
require 'uri'
require_relative 'threads-net/version'

module Threads
  class << self
    def init
      puts 'Hello World'
    end
    def version
      puts Threads::VERSION
    end
  end
end

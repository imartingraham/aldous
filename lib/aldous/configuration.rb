require 'aldous/dummy_error_reporter'
require 'aldous/dummy_logger'
require 'aldous/stdout_logger'

module Aldous
  class Configuration
    attr_accessor :error_reporter,
      :logger,
      :controller_methods_exposed_to_action

    def initialize
      @error_reporter = ::Aldous::DummyErrorReporter
      @logger = ::Aldous::StdoutLogger

      @controller_methods_exposed_to_action = [:params, :session, :cookies, :request, :response]
    end
  end
end

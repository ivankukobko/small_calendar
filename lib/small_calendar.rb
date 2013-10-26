require "small_calendar/version"

module SmallCalendar
  require 'small_calendar/railtie' if defined?(Rails)
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end

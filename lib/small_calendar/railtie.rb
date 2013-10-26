require 'small_calendar/view_helpers'
module SmallCalendar
  class Railtie < Rails::Railtie
    initializer "small_calendar.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

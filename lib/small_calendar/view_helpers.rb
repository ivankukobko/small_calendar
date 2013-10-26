require 'i18n'

module SmallCalendar
  module ViewHelpers
    def calendar(date = Date.today, start_day = :sunday, &block)
      Calendar.new(self, date, start_day, block).table
    end

    class Calendar < Struct.new(:view, :date, :start_day, :callback)
      HEADER = [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]

      delegate :content_tag, to: :view

      def table
        content_tag :table, class: "calendar" do
          header + week_rows
        end
      end

      def header
        header = HEADER.rotate HEADER.index(start_day)
        content_tag :thead do
          content_tag :tr do
            header.map { |week_day| content_tag :th, I18n.t("date.day_names")[HEADER.index week_day] }.join.html_safe
          end
        end
      end

      def week_rows
        content_tag :tbody do
          weeks.map do |week|
            content_tag :tr do
              week.map { |day| day_cell(day) }.join.html_safe
            end
          end.join.html_safe
        end
      end

      def day_cell(day)
        content_tag :td, view.capture(day, &callback), class: day_classes(day)
      end

      def day_classes(day)
        classes = []
        classes << "current-day" if day == date
        classes << "not-in-month" if day.month != date.month
        classes.empty? ? nil : classes.join(" ")
      end

      def weeks
        first = date.beginning_of_month.beginning_of_week(start_day)
        last = date.end_of_month.end_of_week(start_day)
        (first..last).to_a.in_groups_of(7)
      end
    end
  end
end


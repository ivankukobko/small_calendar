# SmallCalendar

Small calendar solution for your rails apps

## Installation

Add this line to your application's Gemfile:

    gem 'small_calendar', github: 'ivankukobko/small_calendar'

And then execute:

    $ bundle

## Usage

In your view add
```
  = calendar Date.today, :monday do |date|
    # Your code inside day cell
```

Don't forget basic styles by adding this to application.css

```
  = require small_calendar
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

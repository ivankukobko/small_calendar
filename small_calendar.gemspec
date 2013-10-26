# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'small_calendar/version'

Gem::Specification.new do |spec|
  spec.name          = "small_calendar"
  spec.version       = SmallCalendar::VERSION
  spec.authors       = ["Ivan Kukobko"]
  spec.email         = ["johnny.da.kid@gmail.com"]
  spec.description   = %q{Calendar view for rails, based on Ryan Bates #213 Calendars screencast}
  spec.summary       = %q{Calendar view for rails}
  spec.homepage      = "https://github.com/ivankukobko/small_calendar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency('i18n', '~> 0.6')
end

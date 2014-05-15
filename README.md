# Minitest::Profiler

`minitest-profiler` hooks into `Minitest` and finds your slow-running tests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-profiler'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install minitest-profiler
```

## Usage

- In your `test_helper` file, mix in the profiler to your test case class.

```ruby
class ActiveSupport::TestCase
  include Minitest::Profiler
end
```

- Run your tests as usual. A report will be printed out after all your tests finish running.

## Notes

- We've only tested this on a Rails 4 app so far.

## Contributing

1. Fork it ( http://github.com/nilenso/minitest-profiler/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

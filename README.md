# UthmaniTextSize

Accurately counts the number of letters in a given uthmani text. In Ruby, if you
call #size on an arabic string with puncuation marks it will count each mark as
a seperate letter.

This gem monkey patches String to provide a #uthmani_size method that filters
out all the extra marks and returns an accurate count of the letters.

As an example:

`"بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ".size` returns `38`, whereas
`" بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ".uthmani_size` returns `19`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'uthmani_text_size'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uthmani_text_size

## Usage

"ٱلرَّحْمَٰنِ".uthmani_size, which would return 6.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imabusabah/uthmani_text_size. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the UthmaniTextSize project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/imabusabah/uthmani_text_size/blob/master/CODE_OF_CONDUCT.md).

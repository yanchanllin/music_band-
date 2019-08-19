Creating musical bands
// Used activerecord and multiple models
// The user that created a given piece of content is the only person who can modify that content 
// Validations for user input to ensure that bad data isn't added to the database, unique value before creating the user

To use this app, just clone, run rake db:migrate and then run shotgun. Everything should be set up.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'music_band'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install music_band

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'yanchanllin'/music_band. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Libraries project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'yanchanllin'/music_band/blob/master/CODE_OF_CONDUCT.md).

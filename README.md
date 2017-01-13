# RelevancyScore

[![Test Coverage](https://codeclimate.com/github/wojno/relevancy_score/badges/coverage.svg)](https://codeclimate.com/github/wojno/relevancy_score/coverage)

Simple algorithm to return a relevancy score for a blob of text based upon the provided keyword.

This algorithm could then be applied to sorting search results similar to `Google`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'relevancy_score'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install relevancy_score

## Usage

Acquire `hash` with related data one may find from search results, and choose a `keyword` that may return this data:

```ruby
{
  title: "The Empire Strikes Back",
  description: "The film is set three years after Star Wars. The Galactic Empire, under the leadership of the villainous Darth Vader and the Emperor, is in pursuit of Luke Skywalker and the rest of the Rebel Alliance. While Vader chases a small band of Luke's friends - Han Solo, Princess Leia Organa, and others - across the galaxy, Luke studies the Force under Jedi Master Yoda. When Vader captures Luke's friends, Luke must decide whether to complete his training and become a full Jedi Knight or to confront Vader and save them."
}
```

Determine how relevant this result is:

```ruby
> RelevancyScore::Calculate.new(text: text, keyword: 'star wars').score
=> 0.01475
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/relevancy_score.


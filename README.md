![Pattern Bibz logo](https://raw.githubusercontent.com/thooams/pattern_bibz/main/pattern-bibz-logo.gif)

# Pattern Bibz

Rails Ruby Pattern Generator.
This gem allows to generate your design pattern through the ralis generator.

![Ruby](https://github.com/thooams/pattern_bibz/workflows/Ruby/badge.svg)

## Usage

```bash
rails generate pattern PATTERN_NAME
```

## Example

```bash
rails generate pattern MyCustomDecorator
```

Files will be created:

    app/decorators/application_decorator.rb
    app/decorators/my_custom_decorator.rb
    test/decorators/application_decoratior_test.rb
    test/decorators/my_custom_decorator_test.rb

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pattern_bibz', group: :development
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install pattern_bibz
```

## Utils
To extend your Rails model generator:

```bash
rails g pattern_bibz:extend_model
```

Then you can generate your model:

```bash
rails g model MyModel title:string ...
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# Cenit - Rails Admin

This is a working project to progressively separate the RailsAdmin logic from Cenit.
The RailsAdmin engine have been used for a while as the UI framework for Cenit since
the early actions where mainly the same as the ones for an administration environment.
Now that the most of actions are non administrative related and a more reactive UI is required,
it is time to prepare Cenit for a new age and say thanks tu RailsAdmin for the well serving.        

## Installation

Add this line to your cenit application's Gemfile:

```ruby
gem 'cenit-rails_admin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cenit-rails_admin

## Usage

This engine is designed as auto-mountable in a Cenit environment, no additional configuration is needed. 
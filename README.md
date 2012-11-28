# OS-Name

A miniscule Ruby gem for checking host OS.

## Usage

```ruby
require 'os-name'

OS.to_s
#=> "OS X"

OS.to_sym
#=> :osx

OS.linux?
#=> false

OS.osx?
#=> true
```

## Installation

Add this line to your application's Gemfile:

    gem 'os-name'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install os-name
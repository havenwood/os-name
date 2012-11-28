# OS-Name

A miniscule Ruby gem for checking host OS.

## Usage

```ruby
require 'os-name'

OS.name
#=> "OS X"

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
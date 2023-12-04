# AsciiFolding

ascii_folding is a Ruby gem providing functionality for ASCII folding. This gem converts non-ASCII characters in a string to their ASCII approximations based on predefined mappings, making it useful for applications requiring standard ASCII characters, such as slug generation or text normalization.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ascii_folding

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ascii_folding

## Usage

To use the ASCII folding functionality, require the gem in your Ruby script and call the fold method with the string you want to process:

```ruby
require 'ascii_folding'

input_string = "Your string with special characters like À, É, etc."
ascii_folded_string = AsciiFolding.fold(input_string)
puts ascii_folded_string
```

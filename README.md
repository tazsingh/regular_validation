# regular_validation #

A collection of Regular Expressions to be used in Validations

## Installation ##

Add `regular_validation` to your `Gemfile`

    gem 'regular_validation', '~> 0.0.2'

## Usage ##

Just use `RegularValidation` with the name of the Regular Expression in your app.

For example:

    RegularValidation.username # Returns the Username Regular Expression
    "some_user" =~ RegularValidation.username    # => 0
    "1nvalid user" =~ RegularValidation.username # => nil

It's especially useful for ActiveModel Validations, however it isn't tied to Rails or any framework:

    validates_format_of :username, with: RegularValidation.username
    validates_format_of :email,    with: RegularValidation.email

Currently supports the following validations:

    username
    email

## TODO ##

* Add more validations
* Add options to validations for allowing/disallowing periods, underscores, etc.

Please fork and add your regular expression validations!

## Testing ##

Clone the repository, run the `bundle` command, and then `rake` to run the MiniTest specs.

## License ##

MIT
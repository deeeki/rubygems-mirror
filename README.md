# rubygems-mirror

http://github.com/rubygems/rubygems-mirror

## Description

This is an update to the old `gem mirror` command. It uses net/http/persistent
and threads to grab the mirror set a little faster than the original.
Eventually it will replace `gem mirror` completely. Right now the API is not
completely stable (it will change several times before release), however, I
will maintain stability in master.

## Features/Problems

* Fast mirroring
* Limited tests - just functional

## Installation

Add this line to your application's Gemfile:

    gem 'rubygems-mirror'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubygems-mirror

## Usage

* In a file at ~/.gem/.mirrorrc add a config that looks like the following:

```yaml
---
- from: http://rubygems.org
  to: /data/rubygems
  parallelism: 10
```

* Either install the gem, then run `gem mirror`, or
* Clone then run `rake mirror:update`

## Resources

* [Website](http://rubygems.org/)
* [Wiki](http://github.com/rubygems/rubygems-mirror/wiki)
* [Source Code](http://github.com/rubygems/rubygems-mirror/)
* [Issues](http://github.com/rubygems/rubygems-mirror/issues)
* [Rubyforge](http://rubyforge.org/projects/rubygems)

## Contributing

1. Fork it ( http://github.com/rubygems/rubygems-mirror/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

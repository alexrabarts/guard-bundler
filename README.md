# Guard::Npm
[![Gem Version](https://badge.fury.io/rb/guard-npm.png)](http://badge.fury.io/rb/guard-npm) [![Build Status](https://travis-ci.org/alexrabarts/guard-npm.png?branch=master)](https://travis-ci.org/alexrabarts/guard-npm) [![Dependency Status](https://gemnasium.com/alexrabarts/guard-npm.png)](https://gemnasium.com/alexrabarts/guard-npm) [![Code Climate](https://codeclimate.com/github/alexrabarts/guard-npm.png)](https://codeclimate.com/github/alexrabarts/guard-npm) [![Coverage Status](https://coveralls.io/repos/alexrabarts/guard-npm/badge.png?branch=master)](https://coveralls.io/r/alexrabarts/guard-npm)

npm guard allows to automatically & intelligently install/update package.json when needed.

## Install

Please be sure to have [Guard](https://github.com/guard/guard) installed before continue.

Install the gem:

```
$ gem install guard-npm
```

Add it to your Gemfile (inside development group):

``` ruby
group :development do
  gem 'guard-npm'
end
```

Add guard definition to your Guardfile by running this command:

```
$ guard init npm
```

## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme)

## Guardfile

npm guard can be really adapted to all kind of projects.

### Standard RubyGem project

```ruby
guard 'npm' do
  watch('package.json')
end
```

Please read [Guard doc](https://github.com/guard/guard#readme) for more information about the Guardfile DSL.

## Development

* Source hosted at [GitHub](https://github.com/alexrabarts/guard-npm)
* Report issues/Questions/Feature requests on [GitHub Issues](https://github.com/alexrabarts/guard-npm/issues)

Pull requests are very welcome! Make sure your patches are well tested. Please create a topic branch for every separate change
you make.

## Authors

[Yann Lugrin](https://github.com/yannlugrin)
[Alex Rabarts](https://github.com/alexrabarts)

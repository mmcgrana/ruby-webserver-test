# Ruby Webserver Test

## Usage

$ bin/setup

$ bin/start thin
$ bin/run thin no-op
$ bin/run thin sleep-ruby
$ bin/run thin sleep-pg

$ bin/start puma
$ bin/run puma no-op
$ bin/run puma sleep-ruby
$ bin/run puma sleep-pg

$ bin/start mongrel
$ bin/run mongrel no-op
$ bin/run mongrel sleep-ruby
$ bin/run mongrel sleep-pg

$ bin/open

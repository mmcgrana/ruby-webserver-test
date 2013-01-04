# Ruby Webserver Test

## Usage

Provision a 12.04 EC2 instance, SSH in as the ubuntu users, and run `bin/setup`. Then:

```console
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
```

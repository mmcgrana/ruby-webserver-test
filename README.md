# Ruby Webserver Test

## Usage

Provision a 12.04 EC2 instance. One the instance, run `bin/limits` as root and log out. Then run `bin/setup` as ubuntu.

To run the tests:

```console
$ bin/start thin
$ bin/run thin no-op && bin/run thin sleep-ruby && thin/run puma sleep-pg

$ bin/start puma
$ bin/run puma no-op && bin/run puma sleep-ruby && bin/run puma sleep-pg

$ bin/start mongrel
$ bin/run mongrel no-op && bin/run mongrel sleep-ruby && bin/run mongrel sleep-pg
```

Commit and push the results.

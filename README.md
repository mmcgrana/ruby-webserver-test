# Ruby Webserver Test

This repo contains methods and corresponding results for smoke tests of Thin, Mongrel, and Puma web servers under moderate concurrent HTTP load.

The goal is to evaluate response latency from these servers as they handle concurrent, long-running requests. This reflects typical CRUD-web-app deployment conditions, e.g. apps that make blocking database calls.

We're specifically not interested in throughput, especially of short-running requests.


## Results

See ./results. The most interesting results are the final PDF graphs of request concurrency vs. response concurrency for the test in which responses required a 200ms blocking Postgres DB call: [Thin](https://github.com/mmcgrana/ruby-webserver-test/blob/master/results/thin-sleep-pg.pdf?raw=true), [Mongrel](https://github.com/mmcgrana/ruby-webserver-test/blob/master/results/mongrel-sleep-pg.pdf?raw=true), [Puma](https://github.com/mmcgrana/ruby-webserver-test/blob/master/results/puma-sleep-pg.pdf?raw=true).


## Reproducing

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

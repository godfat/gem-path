# CHANGES

## gem-path 1.0.0 -- 2024-08-01

* Fixed looking up local gems specified in bundler.

## gem-path 0.7.0 -- 2021-08-11

* Fixed finding gems like google-protobuf again on Mac where it may not be
  using `x86_64-darwin20` but `universal-darwin`.

## gem-path 0.6.2 -- 2017-03-23

* Fixed finding gems like google-protobuf which could have platform postfix.

## gem-path 0.6.1 -- 2014-10-27

* Updated that gem-beit could search against bundler installed gems.

## gem-path 0.6.0 -- 2014-10-27

* Internal cleanup and make find_gem_path a public method.

## gem-path 0.5.1 -- 2013-11-22

* Fixed a bug where it cannot find a gem if the version is not specified.

## gem-path 0.5.0 -- 2013-11-22

* Birthday!

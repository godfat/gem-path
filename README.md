# gem-path [![Build Status](https://secure.travis-ci.org/godfat/gem-path.png?branch=master)](http://travis-ci.org/godfat/gem-path)

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/gem-path)
* [rubygems](https://rubygems.org/gems/gem-path)

## DESCRIPTION:

Find the path for a given gem or require path for editing or greping.

For examples, under [fish](http://fishshell.com/):

    cd (gem path gem-path)
    vim (gem path gem-path)
    grep require -R (gem path gem-path)

Or checkout [gem-eit][], [gem-grep][] for shorthands.

[gem-eit]: https://github.com/godfat/gem-eit
[gem-grep]: https://github.com/godfat/gem-grep

## REQUIREMENTS:

* Tested with MRI (official CRuby), Rubinius and JRuby.

## INSTALLATION:

    gem install gem-path

## SYNOPSIS:

### Gem path

    gem path rib           # ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### Gem path with specific gem version

    gem path rib '<1'      # ~/.gem/ruby/2.0.0/gems/rib-0.9.9
    gem path rib '~>0.8.2' # ~/.gem/ruby/2.0.0/gems/rib-0.8.9
    gem path rib 0.1.0     # ~/.gem/ruby/2.0.0/gems/rib-0.1.0

### Find gem path from a require path

    gem path rib/config    # ~/.gem/ruby/2.0.0/gems/rib-1.0.0

### Find file path from a require path

    gem path timeout       # /usr/lib/ruby/2.0.0/timeout.rb

## CONTRIBUTORS:

* Lin Jen-Shin (@godfat)

## SIDE NOTES:

This was extracted from [eit-gem][].

[eit-gem]: https://github.com/godfat/dev-tool/blob/eaafad940ee3c274cccddf831e04216969223146/bin/eit-gem

## LICENSE:

Apache License 2.0 (Apache-2.0)

Copyright (c) 2013-2021, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# xbuild

Language runtimes installer for production environments.

Supports:
* Perl
* Ruby
* Node.js
* PHP
* Python
* Go

## How to install

Install perl (ex: 5.18.2) (and cpanm/carton/start_server)

    xbuild/perl-install 5.18.2 ~/local/perl-5.18

Install ruby (ex: 2.6.0) (and bundler)

    xbuild/ruby-install 2.6.0 ~/local/ruby-2.6

Install node.js (ex: v0.10.26)

    xbuild/node-install v0.10.26 ~/local/node-v0.10

Install PHP (ex: 5.5.10)

    xbuild/php-install 5.5.10 ~/local/php-5.5.10
    # with some build options
    xbuild/php-install 5.5.10 ~/local/php-5.5.10 -- --with-pear --without-openssl

Install Python (ex: 2.7.6)

    xbuild/python-install 2.7.6 ~/local/python-2.7.6

Install Go (ex: 1.3.3)

    xbuild/go-install 1.3.3 ~/local/go-1.3.3

To update minor version, overwrite simply.

    xbuild/node-install v0.10.25 ~/local/node-v0.10
    xbuild/node-install v0.10.26 ~/local/node-v0.10

    local/node-v0.10/bin/node -v #=> v0.10.26
    #
    # same for other languages as node.

Or, you can use `install` command simply.

    # xbuild/install LANG VERSION PATH [OPTIONS]
    #
    xbuild/install ruby 2.6.0 ~/local/ruby-2.6

### Replayable installation

`xbuild` checks specified install path before actual installation, and skips it if specified version runtime already exists.

For force re-install, use `-f` option.

    xbuild/ruby-install -f 2.6.0 ~/local/ruby-2.6

## How to use

Include installed `bin/` to PATH:

    # perl
    export PATH=$HOME/local/perl-5.18/bin:$PATH
    cpanm -Lextlib -n --installdeps .
    # or carton install (or ...)

    # ruby
    export PATH=$HOME/local/ruby-2.6/bin:$PATH
    bundle install --path vendor

    # node
    export PATH=$HOME/local/node-v0.10/bin:$PATH
    npm install

    # php
    export PATH=$HOME/local/php-5.5.10/bin:$PATH
    pear install

    # python
    export PATH=$HOME/local/python-2.7.6/bin:$PATH
    pip install -r requirements.txt

    # go
    export GOROOT=$HOME/local/go-1.3.3
    export PATH=$GOROOT/bin:$PATH
    go version

## How to try with Docker

You should be install Docker.

    $ docker build -t xbuild-try .
    $ docker run --rm -i -t xbuild-try /bin/bash
    in docker > $ xbuild-install ruby 2.6.0 /usr/local/ruby-2.6.0

## Contributors

* kentaro for PHP
  * https://github.com/kentaro
  * @kentaro on twitter
* yyuu for Python
  * https://github.com/yyuu
  * @_yyuu on twitter

## Copyright

* Copyright (c) 2013- TAGOMORI Satoshi (tagomoris)
  * and contributors
* License
  * Apache License, Version 2.0 (see LICENSE)

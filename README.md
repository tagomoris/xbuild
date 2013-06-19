# xbuild

Language runtimes installer for production environments.

Supports:
* Perl
* Ruby
* Node.js
* PHP
* Python

## How to install

Install perl (ex: 5.16.3) (and cpanm/carton/pmuninstall)

    xbuild/perl-install 5.16.3 ~/local/perl-5.16

Install ruby (ex: 2.0.0-p0) (and bundler)

    xbuild/ruby-install 2.0.0-p0 ~/local/ruby-2.0.0

Install node.js (ex: v0.10.1)

    xbuild/node-install v0.10.1 ~/local/node-v0.10

Install PHP (ex: 5.5.0beta2)

    xbuild/php-install 5.5.0beta2 ~/local/php-5.5.0beta2
    # with some build options
    xbuild/php-install 5.5.0beta2 ~/local/php-5.5.0beta2 -- --with-pear --without-openssl

Install Python (ex: 2.7.3)

    xbuild/python-install 2.7.3 ~/local/python-2.7.3

To update minor version, overwrite simply.

    xbuild/node-install v0.10.0 ~/local/node-v0.10
    xbuild/node-install v0.10.1 ~/local/node-v0.10
    
    local/node-v0.10/bin/node -v #=> v0.10.1
    #
    # same for other languages as node.

Or, you can use `install` command simply.

    # xbuild/install LANG VERSION PATH [OPTIONS]
    #
    xbuild/install ruby 2.0.0-p0 ~/local/ruby-2.0.0

## How to use

Include installed `bin/` to PATH:

    # perl
    export PATH=$HOME/local/perl-5.16.3/bin:$PATH
    cpanm -Lextlib -n --installdeps .
    # or carton install (or ...)
    
    # ruby
    export PATH=$HOME/local/ruby-2.0.0/bin:$PATH
    bundle install --path vendor
    
    # node
    export PATH=$HOME/local/node-v0.10/bin:$PATH
    npm install
    
    # php
    export PATH=$HOME/local/php-5.5.0beta2/bin:$PATH
    pear install
    
    # python
    export PATH=$HOME/local/python-2.7.3/bin:$PATH
    pip install -r requirements.txt

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

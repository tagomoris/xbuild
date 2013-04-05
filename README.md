# xbuild

Language runtimes installer for production environments.

Supports:
* Perl
* Ruby
* Node.js
* PHP

## How to install

Install perl (ex: 5.16.3) (and cpanm/carton/pmuninstall)

    xbuild/perl-install 5.16.3 ~/local/perl-5.16

Install ruby (ex: 2.0.0-p0)

    xbuild/ruby-install 2.0.0-p0 ~/local/ruby-2.0.0

Install node.js (ex: v0.10.1)

    xbuild/node-install v0.10.1 ~/local/node-v0.10

To update minor version, overwrite simply.

    xbuild/node-install v0.10.0 ~/local/node-v0.10
    xbuild/node-install v0.10.1 ~/local/node-v0.10
    
    local/node-v0.10/bin/node -v #=> v0.10.1

Install PHP (ex: 5.5snapshot)

    xbuild/php-install 5.5snapshot ~/local/php-5.5snapshot

Install PHP with build options

    xbuild/php-install 5.5snapshot ~/local/php-5.5snapshot -- --with-pear --without-gd

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
    export PATH=$HOME/local/php-5.5snapshot/bin:$PATH
    pear install

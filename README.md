Packer template for Debian Unstable
===================================

A [Packer](http://www.packer.io/) template for building minimal images of the
[Debian Unstable distribution](https://wiki.debian.org/DebianUnstable), also
known as sid.

Usage
-----

1. [Install Packer](http://www.packer.io/intro/getting-started/setup.html)
2. Clone this repository and cd into it:

    ```
    $ git clone https://github.com/loicfrering/packer-debian-unstable.git
    $ cd packer-debian-unstable
    ```

3. Launch the build:

    ```
    $ packer build template.json
    ```

4. Use the generated packer\_debian-unstable\_{{.Provider}}.box.

Providers
---------

The virtualbox provider is the only one supported at the moment.

License
-------

Copyright (c) 2013 [Loïc Frering](https://github.com/loicfrering), licensed
under the MIT license. See the LICENSE file for more informations.

vCard-vDir - perl modules to compare vCards and vCard AddressBooks
=====================================================================

[![Build Status](https://travis-ci.org/mmitch/vcard-vdir.svg?branch=master)](https://travis-ci.org/mmitch/vcard-vdir)
[![Coverage Status](https://codecov.io/github/mmitch/vcard-vdir/coverage.svg?branch=master)](https://codecov.io/github/mmitch/vcard-vdir?branch=master)
[![GPL 2+](https://img.shields.io/badge/license-GPL%202%2B-blue.svg)](http://www.gnu.org/licenses/gpl-2.0-standalone.html)


status
------

This project is in an early development stage and will propably not do
anything useful yet.  When it becomes usable, I will try to merge it
into the existing [Text::vCard](https://github.com/ranguard/text-vcard)
distribution - otherwise it will be offered as a standalone module.


what
----

vCard-vDir splits ``vCard::AddressBook`` or
``Text::vCard::Addressbook`` into multiple files (one per vCard) and
writes them to a directory.

vCard-vdir can also read a directory of vCard files and combine them
into a ``vCard::AddressBook`` or ``Text::vCard::Addressbook``.

While ``Text::vCard`` uses single-file address books, some other tools
like [vdirsyncer](https://vdirsyncer.pimutils.org/en/stable/) use the
multi-file *vDir* format.  vCard-vDir provides conversion between both
formats.


why
---

I have a set of very old (>15y) Perl scripts to handle my personal
address book based on a custom text format.  I want to connect this
address book to my smartphone, so I need to connect my custom scripts
to a vCard file storage and that's what this project is part of.

For this purpose I also work on
[vCard-Compare](https://github.com/mmitch/vcard-compare) which
compares two vCard address books and can list differences between
them.

As I just code blindly and see where this takes me (finishing this
project is by no means urgent), I might come up with other projects,
most likely something like ``vcard-merge''.


build and installation
----------------------

To build and install the current development version of vCard-vDir,
you need to have Dist::Zilla installed.  Run the ``dzil`` command - if
it is available, Dist::Zilla should be installed.

To install or upgrade Dist::Zilla use

    $ cpan -i Dist::Zilla

or

    $ cpanm Dist::Zilla

Then clone this repository, enter it and start the install process:

    $ git clone https://github.com/mmitch/vcard-vdir.git
	$ cd vcard-vdir
    $ dzil install

Any missing dependencies should be reported automatically and can be
installed by

    $ dzil authordeps --missing | cpanm
	$ dzil listdeps --missing | cpanm

Afterwards, try the installation again with

    $ dzil install


where to get it
---------------

vCard-vDir source is hosted at https://github.com/mmitch/vcard-vdir


copyright
---------

Copyright (C) 2016  Christian Garbs <mitch@cgarbs.de>  
Licensed under GNU GPL v2 or later.

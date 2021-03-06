# werc - a minimalist document management system

Work in progress
----------------

This is a port of werc to [algernon](https://github.com/xyproto/algernon).
It is also a work in progress.

About werc
----------

Werc is a content management system and web (anti-)framework designed to be simple to
use, simple to setup, simple to hack on, and not get on the way while allowing
users easy customization.

For more information see the official website: http://werc.cat-v.org/


Installation
------------

Requirements:

* An http server that can handle CGIs
* Plan 9 from User Space: http://plan9.us - Or 9base-5 or later: http://tools.suckless.org/9base

Note: Werc by default expects the Plan 9 tools to be installed under
/usr/local/plan9/bin/, if you have installed them elsewhere you will need to
edit the #! line in bin/werc.rc and customize the $plan9port variable in your
etc/initrc.local.


Instructions:

Untar werc at your desired location, configure httpd to use
/path-to-your-werc-installation/bin/werc.rc as a cgi-script, it is recommended
that you make werc.rc handle all non-static files (this can be done by setting
it up as your 404 handler) and setup your virtual hosts to handle static files
by setting the document root for the domain to
/path-to-werc-installation/sites/yourdomain.com/, and create a directory for
your web site under sites/ where you can start adding content right away.

If you will want to allow updates via the web interface (eg., for wiki or
comments apps) make sure all files under sites/ are writable by the user your
cgi will run as, usually www-data, for example by doing: chown -R :www-data
sites/; chmod -R g+w sites/

If your Plan 9 from User Space installation is located somewhere else than the
standard /usr/local/plan9/ you will need to edit the first line of bin/werc.rc
(Note that p9p is picky about where it is located, once you run ./INSTALL you
should *not* move it to a different directory without running ./INSTALL again.)

For general configuration options copy etc/initrc to etc/initrc.local and
customize it as needed. Site (and directory) specific options can be set in a
sites/example.com/_werc/config file inside the site's directory. To customize
templates and included files you can store your own version of the files in
lib/ under sites/example.com/_werc/lib

The source tree for the werc website is included under sites/werc.cat-v.org as
an example, feel free to use it as a template for your own site.

For more details see the documentation section of the website:
http://werc.cat-v.org/docs/


Contact
-------

For comments, suggestions, bug reports or patches join the werc9 list in
google groups: http://groups.google.com/group/werc9 or the irc channel #plan9
in irc.freenode.org

If you have a public website that uses werc I would love to hear about it and
get feedback about you experience setting it up.

If you want to be notified of new releases see the News section of the website
or use Freshmeat: http://freshmeat.net/projects/werc/


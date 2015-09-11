Section: misc
Priority: optional
Homepage: http://www.proxysql.com

Package: proxysql
Version: 0.2.0902
Maintainer: Rene Cannao <rene.cannao@gmail.com>
Architecture: amd64
# Changelog: CHANGELOG.md
# Readme: README.md
Files: proxysql /usr/bin/
 etc/proxysql.cnf /
 etc/init.d/proxysql /
Description: High performance MySQL proxy
 ProxySQL is a fast, reliable MySQL proxy with advanced runtime configuration management (virtually no configuration change requires a restart). 
 .
 It features query routing, query caching, query rewriting (for queries generated by ORMs, for example) and is most of the time a drop-in replacement for mysqld from the point of view of the application. It can be configured and remote controlled through an SQL-compatible admin interface.
File: postinst
 #!/bin/sh -e
 if [ ! -d /var/run/proxysql ]; then mkdir /var/run/proxysql ; fi
 update-rc.d proxysql defaults

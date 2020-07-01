#! /bin/bash

/etc/init.d/mysql start
/etc/init.d/apache2 start
/usr/bin/tail -f /dev/null

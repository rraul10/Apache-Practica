#!/bin/bash
a2ensite Raul.conf

service apache2 reload

apache2ctl -D FOREGROUND
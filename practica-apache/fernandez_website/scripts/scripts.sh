#!/bin/bash
a2ensite fernandez.conf

service apache2 reload

apache2ctl -D FOREGROUND
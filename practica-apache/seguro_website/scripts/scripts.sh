#!/bin/bash

#Habilitar los sitios
a2ensite raulfernandez.conf

#Habilitamos-ssl
a2enmod ssl

#Recargar la configuracion de apache
service apache2 reload

#Iniciar apache en primer plano
apache2ctl -D FOREGROUND 
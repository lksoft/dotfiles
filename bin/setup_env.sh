#!/bin/sh

export MISSING_VALUE="no"
if [ "$1" = "" ]; then
	export MISSING_VALUE="yes"
fi

if [ "$2" = "" ]; then
	export MISSING_VALUE="yes"
fi

if [ "$MISSING_VALUE" = "yes" ]; then
	echo "Usage: setup # (pm|cb)i [#], where the first # is the server number and the second value indicates the type of server, while the optional last number indicates the number of that type."
	exit 0
fi

if [ $(id -u) -ne 0 ]; then
	echo "You need to run as root!"
	exit 0
fi

export SUPPLEMENTAL_NAME=""
if [ "$3" != "" ]; then
	export SUPPLEMENTAL_NAME="-${2}${3}"
fi

# Update apache with the pre Let's Encrypt server config and restart
sed -e s/XX/${1}/g configure/pre-le-apache.conf > apache-${1}.conf
mv apache-${1}.conf /etc/apache2/sites-available/000-default.conf
apachectl -k restart

certbot certonly --webroot -w /var/www/lets.smallcubed.com -d sc${1}.smallcubed.com -d webmin${1}.smallcubed.com

certbot renew

# Update the apachec config and restart again
sed -e s/XX/${1}/g configure/apache-${2}> apache-${1}.conf
mv apache-${1}.conf /etc/apache2/sites-available/000-default.conf
apachectl -k restart

# Rewrite the webmin config to use the correct cert file & restart
sed -e s/scXX/sc${1}/g configure/webmin.conf > webmin-${1}.conf
mv webmin-${1}.conf /etc/webmin/miniserv.conf
/etc/init.d/webmin restart

echo "sc${1}${SUPPLEMENTAL_NAME}.smallcubed.com" > /etc/hostname
hostname "sc${1}${SUPPLEMENTAL_NAME}.smallcubed.com"



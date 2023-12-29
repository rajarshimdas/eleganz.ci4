#!/bin/sh

fx=eleganz.ci4/writable

sudo find eleganz.ci4/ \( -type d -exec chmod 755 {} \; \) -o \( -type f -exec chmod 644 {} \; \)

sudo chown -R rd:rd .

sudo chown -R rd:www-data $fx
sudo chmod -R 775 $fx


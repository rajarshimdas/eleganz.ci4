#!/bin/sh

dt=$(date +%Y-%m-%d)
mysqldump -u rajarshi -p eleganz_ci4_db > filesdb/rajarshi/mysql/db-${dt}.sql

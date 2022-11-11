#!/bin/bash
mysql -h $1 -P 6606 -uroot -p123 -e "show databases"
#!/bin/sh
find ~ -name "*.orig" -type l -delete
find ~ -xtype l -delete

#!/bin/env fish
find ~ -name "*.orig" -type l -delete
find ~ -xtype l -delete

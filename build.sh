#!/bin/sh

tup upd
naturaldocs -i project/src -o html docs -p .ndocs
cd project
busted
cd ..

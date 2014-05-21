#!/bin/sh

ls -al $1 | tail -n 10 | cut -d ' ' -f 10


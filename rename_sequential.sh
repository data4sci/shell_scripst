#!/bin/bash

ls -v | cat -n | while read n f; do mv -n "$f" "sl$n.jpg"; done

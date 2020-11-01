#!/bin/bash

ls -v | cat -n | while read n f; do mv -n "$f" "sl$n.jpg"; done
#ls | cat -n | while read n f; do mv "$f" `printf "%04d.jpg" $n`; done

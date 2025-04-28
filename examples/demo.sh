#!/bin/sh +x

# This is a demo script.
# vcr: sleep=3s
ls
# Going to sleep...
# vcr: hide
sleep 5
# vcr: show
echo Teste
sleep 5
ls

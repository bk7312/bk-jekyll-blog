#!/bin/sh
# gittyup.sh: a script to automate github stuff...

git status

git add *

git status

read commit_msg

git commit -m "$commit_msg"

git status

#git push
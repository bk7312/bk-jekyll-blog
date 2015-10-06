#!/bin/sh
# gittyup.sh: a script to automate github stuff...

echo '\n git status before git add\n'
git status

git add *

echo '\n git status after git add * (adds every changes made)\n'
git status

echo '\n Enter commit message or ctrl-c to abort:\n'
read commit_msg
git commit -m '$commit_msg'

echo '\n git status after committing'
git status

echo '\n git push'
git push
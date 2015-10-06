---
layout: post
title: Creating a bash script to group git commands.
---

Simplifying commits by grouping a bunch of commands into a simple bash script. Yup, it works and feels a bit more convenient than manually typing all the different commands. Here's the code below:

```bash
#!/bin/sh
# gittyup.sh: a script to automate github stuff...

echo '\n git status before git add\n'
git status

git add *

echo '\n git status after git add * (adds every changes made)\n'
git status

echo '\n Enter commit message or ctrl-c to abort:\n'
read commit_msg
git commit -m "$commit_msg"

echo '\n git status after committing'
git status

echo '\n git push'
git push
```

Just make it executable and bam, you run it every time you want to commit and it saves a bit of time. Truth be told, you don't really need all those git status commands, I just like to see the status before committing. You can get away with just the add, commit and push command if brevity is your cup of tea.

Really short/quick post just to sum up a bit on scripting, I'm sure there's tons of other better ways of doing this but this is what I've came up with and I sure like what I did! The next step might be automating post file creation and make this command run everytime I put a finished post into the _post folder. Might have to look into cron jobs for that.

Enough typing, it's time to gittyup!
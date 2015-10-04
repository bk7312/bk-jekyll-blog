---
layout: post
title: How was this blog setup?
---

Let me try doing this setup post to see if it works. So, I created a github account, fork jekyll-now and edited some stuff from there. Next comes the confused me as I try to figure out how to download this blog, get an offline copy and upload the updated copy into github. See, I want to post stuff offline, without having to navigate to github every single time I want to write something so this is something I really want to figure out.

So what did I do? Downloading the repo as a zip didn't quite work as planned. That's okay. I tried pulling my repo, didn't work. Turns out, I have to clone it.

### Stuff I did

Some stuff worth noting, after cloning it (via git clone url-of-repo), you'll have an offline copy. It's important to make sure every new file added is tracked (via git add filename) and make sure to check (via git status). Oh, and make sure you're in the right folder. After making some changes, make sure to commit it (via git commit -m 'commit message'). Only after that can you update your repo (via git push).

### Initialization stuff

If you create an offline repo (via git init), make sure to tell github that there's an offline copy (via git remote add origin url-of-repo) and make sure to check it (via git remote -v). Also, don't forget to configure git (via git config --global user.name your-user-name and git config --global user.email your-email). To check, just remove the global part and the part with your actual details.

### Stuff I haven't tried yet

If you want to get the latest files from github, pull first (via git pull) but I've never tried it yet. Also, you can merge changes (via git merge), again I haven't tried it yet. You can also do a password cache thing (via git config --global credential.helper cache) but again, it's something I'll try some other time.

### Stuff I have to learn later

Markdown, gotta learn how to use it. As in, how to add hyperlinks, format text, add media and etc. Also gotta learn how to modify jekyll, the layout, the formats and stuff. Having a backup copy in dropbox is also something I want to do.

I think that's it for now. Time to try pushing this into my repo and see what happens, if you're reading this, it works!!

### Aftermath

It works!! Only two problems though. I deleted my "old title and post name?" post but it's still there in my blog. How do I change that? Wait, apparently it's not a problem coz trying the commit command again, it detected the deletion of that old post. It works!! Now what was the second problem again...

Oh yeah, the password saving thing. And that it takes a while for the changes to take effect, which isn't really a problem to be honest.

Okay, more problems. I can't seem to make a second commit and push. First part of adding a new post, committing and pushing works. When I tried to edit, commit and push, it failed. Git says that everything is up to date but it isn't getting updated and I don't know why. Also, it's getting annoying typing my credentials every single time I push as the credential cache isn't working.

### Aftermath 2

I think I'm starting to get the hang of this. Let's see, after I edit them, I have to add them first before I commit, then I can push. If I didn't add them, it'll say 'Changed but not updated', then after adding, it'll say 'Changes to be committed'. Only after that can I commit, then can I push. Same for removing posts I guess. Now the next step is figuring out the password cache thing and whether git push is done through https or not. If not, then I have to figure something out.

### Aftermath 3

Okay, this is the final update for now. Just to add some more findings, from what I've read, git push is done through https which is good. The password cache thing only works from version 1.7.10 onwards, which is bad coz mine is still 1.7.2. I'll sort that out some other time, for now I'll deal with the inconvenience. Another thing I have to do, creating a script that does all the adding, committing and pushing for me. Guess that's what rake in octopress does, time to brush up my scripting skills again. And yes, I'm doing this final aftermath thing as an exercise to get used to git. Till next time~
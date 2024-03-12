---
layout: default
title: making a Studio Ghibli wallpaper carousel (for MacOS)
date: 2020-10-23
description: 'sprinkle some Ghibli over your desktop.'
image: '2020-10-23-ghibli-wallpaper-for-mac-desktop-screenshot.png'
feature: 1
---

Studio Ghibli [have dropped almost 1k movie stills into the public domain](http://www.ghibli.jp/info/013381/) (and counting) over the last few months. I turned this into a rotating desktop wallpaper for my Mac, and thought I'd share the (tiny) process.

First, make (AKA `mkdir`) a folder in which to store the images via [a terminal session](https://www.youtube.com/watch?v=QROX039ckO8), then navigate to that directory (with `cd`). You can edit the command below to do this, dropping in a suitable file path replacement for you.

```bash
mkdir /Users/Ewen/Pictures/ghibli
cd /Users/Ewen/Pictures/ghibli/
```

Before starting the d/l, you will need [wget](https://www.gnu.org/software/wget/). Get [Homebrew](https://brew.sh/) if you haven't already, then install wget via `brew`.

```bash
brew install wget
```

This next part comes courtesy of a comment under a [HN post following the news](https://news.ycombinator.com/item?id=24564775). I hadn't seen the curly braces `{}` trick before, which is a neat way to expand a numeric series in the shell. Anyway, this step will grab the whole image drop (as of 20th November, 2020) and will probably take an hour or so.

```bash
wget --random-wait --timestamping http://www.ghibli.jp/gallery/{ged,chihiro,karigurashi,ponyo,kokurikozaka,marnie,kaguyahime,kazetachinu,howl,baron,ghiblies,yamada,mononoke,mimi,tanuki,umi,porco,majo,totoro}{001..050}.jpg
```

Once you have the pics, all that's left to do is to start up the wallpaper carousel:

- open up System Preferences + click _Desktop and Screensaver_
- click the plus button on the left pane and add the new folder
- tick _Change Picture_ and decide on a "change time"

![Screenshot of MacOS desktop & screen saver selections](/images/2020-10-23-ghibli-wallpaper-for-mac-menu-screenshot.png)

That's it!

![Screenshot of new desktop wallpaper](/images/2020-10-23-ghibli-wallpaper-for-mac-desktop-screenshot.png)

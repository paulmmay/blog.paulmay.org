---
layout: post
title: Upgrading to Mountain Lion
comments: true
---

I've been using Mountain Lion for about a week now and for the most part it has
been a smoother transition than last year's upgrade to Lion. At the very least
I'm still scrolling in the same way and CMD+SHIFT+S is back.

Apple's [What's New](http://www.apple.com/osx/whats-new/) page for Mountain
Lion doesn't cover any of the changes to the less user-friendly aspects of OS
X.

## Git

I'm not sure why Git is removed when upgrading, but it is. There are two ways
to fix this. You could upgrade to XCode 4.4 in the App Store, Git is bundled
in the 4 gigs you must download. Or if you're impatient having sat through the
Mountain Lion download (you should've gone outside) get the much smaller
installer from [git-scm.com](http://git-scm.com/downloads).

## GCC Compilers for Homebrew and Ruby Gems

Just like with Git upgrading to Lion removes your C and C++ compilers. Why? I
don't know. Last year Kenneth Reitz packaged these compilers into a nice little
(<200mb) [installer](http://kennethreitz.com/xcode-gcc-and-homebrew.html).

## Localhost and Web Sharing

Web Sharing has been removed from System Preferences > Sharing with Mountain
Lion. Apache is still on your computer but there's no longer a GUI (well, a
check box) for starting and stopping it.

I found [this blog post](http://coolestguyplanettech.com/downtown/install-and-configure-apache-mysql-php-and-phpmyadmin-osx-108-mountain-lion)
detailing how to get your localhost running again which at its simplest is just
running the following command in a Terminal window:

    $ sudo apachectl start

Maybe the bigger change is that `~/Sites` no longer maps to
`http://localhost/~sklise/`. The above linked post tells you how to remap this
folder but I decided to move all of my files from `~/Sites` to
`/Library/WebServer/Documents/` and then I removed the Sites folder and
replaced it with a symlink:

    $ mv ~/Sites/* /Library/WebServer/Documents # Or just drag and drop
    $ rm -r ~/Sites
    $ ln -s /Library/WebServer/Documents ~/Sites

The Sites folder is back in my home directory with the little shortcut arrow in
the corner and clicking on it shows me the contents of
`/Library/WebServer/Documents`.

## Miscellany

### Show me my folders

Each upgrade to OS X since 10.7 has hidden `~/Library` from view in the Finder.
Most users probably don't care but if you are installing plugins or otherwise
mucking around with Application Support it's nice to have drag and drop access
to this folder.

    $ chflags nohidden ~/Library

### It's back

![](/images/2012-08-02-digitalcolor.png)

The Digital Color Meter.app is a handy tool that takes the eye dropper you
might know from Photoshop and the like and lets you scan your entire display
reading out the color values. With Lion the Digital Color Meter dropped support
to display colors as hex values. But Mountain Lion brings it back as well as
showing percentages. However this option has been moved to the View menu which
is find I guess, how often do you need to see the same color in both RGB and
hex values?

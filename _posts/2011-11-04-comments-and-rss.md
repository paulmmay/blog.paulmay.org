---
layout: post
title: New Site, Now with Comments and RSS
comments: true
---

After a summer and fall of slowly rewriting this site in Ruby on Rails I realized that a Rails app is overkill. That and that I actually prefer the command line and text editor to any web form.

Enter [Jekyll](https://github.com/mojombo/jekyll).

It's a static site generator written in Ruby. No database. No browser interface. I write my posts in [Markdown](http://daringfireball.net/projects/markdown/) and have a handful of template files. Running Jekyll (`$ jekyll`) combines the templates with the posts and generates html files of the site. Very little server load, simple. Easy to update. No bloat or complicated (and largely unneeded) Wordpress upgrades.

However I've been disappointed with the lack of detailed documentation for setting up Jekyll. I'll write a bit here how I set up comments and an RSS feed and soon I'll write up creating and deploying a site with Jekyll.

## Comments with Disqus

For commenting, without a database, I had to look for a service that could embed in the page and save the comments on an external database. Embeddable commenting is exactly what [Disqus](http://disqus.com) does. Getting Disqus on my site was wonderfully easy and straight forward. I found a tutorial by Douglas Creager who explains the whole process on [his own Jekyll site](http://dcreager.net/2009/08/07/disqus-comments/). So I've got Disqus comments, just like over on my [Tumblr](http://stevenklise.tumblr.com), so please use it.

## Burning an RSS Feed

Even though Google Reader has just crippled itself I still prefer to digest the internet through RSS feeds. With Jekyll's templating building a feed was also easy and took 5 minutes to set up. Five minutes if you remove the time spent chasing character encoding issues from copying posts from Wordpress. I found a [tutorial](http://recursive-design.com/blog/2010/09/14/integrating-jekyll-with-feedburner/) from Recursive Design to create a feed and then the one step process of getting that feed hosted on Feedburner.

Straightforward until the author started talking about nginx rewrites. There is some code offered to make a rewrite but no indication where that code goes. If you're familiar with nginx you probably knew exactly how to do this, but I don't. This site is hosted on Heroku so a rewrite would not be able to be applied directly to the server and would have to be app specific. Jekyll on Heroku requires the `rack-jekyll` gem ([documentation on Github](https://github.com/bry4n/rack-jekyll)). Running on Rack gives quick access to rewrites in just four lines. Open up `config.ru` (a full tutorial on Jekyll is coming soon, on this blog) and add the following lines:

<script src="https://gist.github.com/1340812.js?file=config.ru"></script>

You'll also need to include `rack/rewrite` in your `Gemfile` or `.gems`. I went with bundler and a `Gemfile` which you can see below

<script src="https://gist.github.com/1340812.js?file=Gemfile"></script>

So far, blogging with Jekyll has been great.

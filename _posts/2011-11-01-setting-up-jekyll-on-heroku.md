---
layout: post
title: Setting Up Jekyll On Heroku
published: false
comments: true
---
#### Or Using Setup Documentation As A First Post

I'm making my site with Jekyll to deploy on Heroku so I'll be using
[Rack-Jekyll](https://github.com/adaoraul/rack-jekyll). So I need a `config.ru` file
to enable running with `rackup`.

    $ touch config.ru

Then insert the following to launch the app

<caption>**config.ru:**</caption>

    require "rack/jekyll"
    run Rack::Jekyll.new


http://tom.preston-werner.com/
https://github.com/mojombo/jekyll/wiki/Template-Data
https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter
https://github.com/adaoraul/rack-jekyll
https://github.com/mojombo/jekyll/wiki
https://github.com/mojombo/mojombo.github.com/blob/master/index.html
https://github.com/mojombo/jekyll/wiki/Plugins
https://gist.github.com/960150
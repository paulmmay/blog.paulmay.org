---
layout: blogindex
title: Blog
---
{% assign posts_collate = site.posts %}
{% include bootstrap/posts_lastten %}
<div class="content">
<form id="archiveform" method="get" action="/blog/archive" onsubmit="window.location=this.action; return false;"> 
<input type="submit" class="archivebutton" title="Archive" value="Archive" onmouseover="window.status='Archive'; return true;" onmouseout="window.status='';return true;" /></form>
</div>
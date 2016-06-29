---
layout: page
title: About
permalink: /about/
---

## Skills

<ul style="display: inline-block;">
  {% for item in site.author.skills %}
    <li style="float: left"><a class="btn btn-ghost">{{item}}</a></li>
  {% endfor %}
</ul>

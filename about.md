---
layout: page
title: About
permalink: /about/
---

## Skills

<ul class="skills">
  {% for item in site.author.skills %}
    <li><a class="btn btn-ghost">{{item}}</a></li>
  {% endfor %}
</ul>

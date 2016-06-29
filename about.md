---
layout: page
title: About
permalink: /about/
---

<ul>
  {% for item in site.author.knowledge %}
    <li><a class="btn btn-ghost">{{item}}</a></li>
  {% endfor %}
</ul>

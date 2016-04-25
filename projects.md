---
layout: page
title: Projetos
---

<p>
  <a href="{{ site.github.owner_url }}">Página no GitHub</a>
</p>

<p>
  {% for node in site.github.public_repositories %}
    <li class="sidebar-nav-item">
      <a href="{{ node.url }}" target="_blank">{{ node.name }}</a>
    </li>
  {% endfor %}
</p>

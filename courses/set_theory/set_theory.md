---
layout: course_page
title: Set Theory
categories: sem1
use_latex : true
permalink: /courses/set_theory/
---

{% assign set_pages = site.pages | where: "layout", "set" %}
{% assign link = page.permalink %}
{% assign set_pages = set_pages | where_exp: "page", "page.url contains link" %}

<ul>
  {% for page in set_pages %}
    <li><a href="{{ page.url | relative_url }}">{{ page.title }}</a></li>
  {% endfor %}
</ul>
---
layout: default
title: Courses
permalink: /courses
---

<ul>
  {% assign course_pages = site.pages | where_exp: "page", "page.layout == 'course_page'" %}
  {% for course in course_pages %}
    <li><a href="{{ course.url | relative_url }}">{{ course.title }}</a></li>
  {% endfor %}
</ul>
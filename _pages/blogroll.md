---
layout: default
title: Blogroll
---

Some certified websites, have a butchers.

{% assign links = site.data.blogroll | sort: "title" | sample: site.data.blogroll.size %}
{%- for item in links %}
- [{{ item.title }}]({{ item.url }})
{%- endfor %}

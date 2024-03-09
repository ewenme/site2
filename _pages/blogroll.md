---
layout: default
title: Blogroll
---

<a href="/blogroll.xml" class="">RSS</a>

Certified websites, have a butchers.

{% assign links = site.data.blogroll | sort: "title" | sample: site.data.blogroll.size %}
{%- for item in links %}
- [{{ item.title }}]({{ item.url }})
{%- endfor %}

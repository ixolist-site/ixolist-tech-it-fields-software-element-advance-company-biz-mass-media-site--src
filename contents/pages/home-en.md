---
layout: default
title: IXOlist Mass Media
permalink: /
lang: en
page_id: home
---
<div class="news-block p-3">
  <div class="d-flex align-items-center justify-content-between w-100">
  <h1 style="color: #1976D2;" class="display-4 fw-bold mb-3">Latest news</h1>
  <a class="tags-title" href="/tags" style="text-decoration: none; color: #1976D2;"><h1 class="display-6 fw-normal">Tags</h1></a>
  </div>
  {% for new in site.posts %}
    {% if new.lang == page.lang %}
      {% include new-card.html new=new %}
    {% endif %}
  {% endfor %}
</div>



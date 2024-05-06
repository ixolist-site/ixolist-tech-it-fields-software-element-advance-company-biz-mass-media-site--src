---
layout: default
title: IXOlist Mass Media
permalink: /
lang: en
page_id: home
---
<div class="news-block p-3">
  <h1 style="color: #1976D2;" class="display-4 fw-bold mb-3">Latest news</h1>
  {% for new in site.posts %}
    {% if new.lang == page.lang %}
      {% include new-card.html new=new %}
    {% endif %}
  {% endfor %}
</div>



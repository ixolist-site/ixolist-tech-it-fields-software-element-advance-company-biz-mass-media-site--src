---
layout: default
title: IXOlist Mass Media - Новости
permalink: /news
lang: ru
page_id: news
---
<div class="news-block p-3">
   <div class="d-flex align-items-center justify-content-between w-100">
  <h1 style="color: #1976D2;" class="display-4 fw-bold mb-3">Последние новости</h1>
  </div>
  {% for new in site.posts %}
    {% if new.lang == page.lang %}
      {% include new-card.html new=new %}
    {% endif %}
  {% endfor %}
</div>
---
layout: default
title: IXOlist СМИ
permalink: /
lang: ru
page_id: home
---
<div class="news-block p-3">
  <h1 style="color: #1976D2;" class="display-4 fw-bold mb-3">Последние новости</h1>
  {% for new in site.posts %}
    {% if new.lang == page.lang %}
      {% include new-card.html new=new %}
    {% endif %}
  {% endfor %}
</div>



---
layout: default
title: Categories
permalink: /categories/
lang: en
page_id: categories
---
<div class="p-3">
  {% for postscat in site.categories %}
    {% assign cat = postscat | first %}
    {% assign lang_matches = false %}
    {% for new in site.categories[cat] %}
      {% if new.lang == page.lang %}
        {% assign lang_matches = true %}
      {% endif %}
    {% endfor %}
    {% if lang_matches %}
      <div class="mb-4">
        <h4 class="display-6 category-title" id="{{ cat }}" style="scroll-margin-top: 79px;"> {{ cat }}</h4>
        {% for new in site.categories[cat] %}
          {% if new.lang == page.lang %}
            {% include new-card.html new=new %}
          {% endif %}
        {% endfor %}
      </div>
    {% endif %}
  {% endfor %}
</div>

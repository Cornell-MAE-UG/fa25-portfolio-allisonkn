
---
layout: default
title: Allison Newman - Portfolio
permalink: /projects/
---
<p>Projects found: {{ site.projects.size }}</p>

<div class="gallery-container">
  <div class="project-gallery">

    {% assign sorted_projects = site.projects | sort: "order" %}

    {% for project in sorted_projects %}
      <div class="gallery-item">
        <a href="{{ project.url | relative_url }}">

          {% if project.image %}
            <img
              src="{{ project.image | relative_url }}"
              alt="{{ project.title | escape }}"
              loading="lazy">
          {% endif %}

          <p>{{ project.title }}</p>

        </a>
      </div>
    {% endfor %}

  </div>
</div>

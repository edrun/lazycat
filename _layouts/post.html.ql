---
layout: default
---

<section class="post">
{{ content }}
</section>
<section class="meta">
<span class="author">
  <a href="http://edrun.github.io/lazycat">{{ site.author }}</a>
</span>
<span class="time">
  /
  <time datetime="{{ page.date | date:"%Y-%m-%d" }}">{{ page.date | date:"%Y-%m-%d" }}</time>
</span>
<br />
<span class="license">
  Published under <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">(CC) BY-NC-SA</a>
</span>
{% if page.categories %}
<span class="categories">
  in categories
  {% for cat in page.categories %}
  <a href="/lazycat/categories/#{{ cat }}" title="{{ cat }}">{{ cat }}</a>&nbsp;
  {% endfor %}
</span>
{% endif %}
{% if page.tags %}
<span class="tags">
  tagged with 
  {% for tag in page.tags %}
  <a href="/lazycat/tags/#{{ tag }}" title="{{ tag }}">{{ tag }}</a>&nbsp;
  {% endfor %}
</span>
{% endif %}
</section>
{% include comments.md %}
<script type="text/javascript">
$(function(){
  $(document).keydown(function(e) {
    var url = false;
        if (e.which == 37 || e.which == 74) {  // Left arrow and J
            {% if page.previous %}
        url = '/lazycat/{{ page.previous.url }}';
        {% endif %}
        }
        else if (e.which == 39 || e.which == 75) {  // Right arrow and K
            {% if page.next %}
        url = '{/lazycat/{{ page.next.url }}';
        {% endif %}
        }
        if (url) {
            window.location = url;
        }
  });
})
</script>


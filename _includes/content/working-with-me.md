
{% if page.articles and page.articles.size > 1 %}
#### In this document
<ul>
	{% for item in page.articles %}
		<li>
			<a href="#{{ item[0] }}" title="Click to scroll down to section.">{{ item[1].heading }}</a>
		</li>
	{% endfor %}
</ul>
{% else %}
---
{% endif %}
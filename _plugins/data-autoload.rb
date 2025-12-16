# _plugins/inject_components.rb.
require 'nokogiri' # For HTML parsing and manipulation.
require 'set'      # To track injected URLs and avoid duplicates.

# Hook into Jekyll's post-render phase for both pages and documents.
Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|

	# Skip if not an HTML file.
	next unless doc.output_ext == '.html'

	# Parse the rendered HTML into a Nokogiri document for parsing.
	html = Nokogiri::HTML::Document.parse(doc.output)

	# Select elements that declare autoloadable CSS or JS.
	components = html.css('[data-autoload-css-href], [data-autoload-js-src]')

	# Sets to track which URLs we've already injected.
	injected_css = Set.new
	injected_js = Set.new

	# Loop through each component-marked element.
	components.each do |el|

		head = html.at('head')	# Find the <head> once per element.
		next unless head		# Skip if <head> isn't present.

		# ----- CSS Injection -----
		css_href = el['data-autoload-css-href']	# Get CSS href.
		if css_href && !injected_css.include?(css_href)
			# If defer attr is present, use media="print" trick.
			css_defer = el.has_attribute?('data-autoload-css-defer')
			css_attrs = css_defer ? ' media="print" onload="this.media=\'all\'"' : ''
			head.add_child(%Q(<link rel="stylesheet" href="#{css_href}"#{css_attrs}>))
			injected_css << css_href	# Mark as injected.
		end

		# ----- JS Injection -----
		js_src = el['data-autoload-js-src']	# Get JS src.
		if js_src && !injected_js.include?(js_src)
			# Add defer if attribute is present.
			js_defer = el.has_attribute?('data-autoload-js-defer')
			js_attrs = js_defer ? ' defer' : ''
			head.add_child(%Q(<script src="#{js_src}"#{js_attrs}></script>))
			injected_js << js_src	# Mark as injected.
		end

		# ----- Attribute Cleanup -----
		# Remove all autoload-related attributes from the element.
		el.remove_attribute('data-autoload-css-href')
		el.remove_attribute('data-autoload-css-defer')
		el.remove_attribute('data-autoload-js-src')
		el.remove_attribute('data-autoload-js-defer')
	end

	# Replace the document's output with the modified HTML.
	doc.output = html.to_html
end

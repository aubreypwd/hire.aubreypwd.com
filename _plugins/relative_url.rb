# This overrides Jekyll’s `relative_url` filter to generate *true* relative paths.
#
# Example:
#   Page at /foo/bar/index.html linking to /css/main.css → ../../css/main.css, etc
#
# This allows the entire site to be moved anywhere (including local filesystem browsing)
# without breaking links. GitHub Pages does NOT load custom plugins, so the default
# Jekyll behavior will be used automatically when deployed there.

require 'pathname'

module Jekyll
	module UrlRelativizer
		def relative_url(url)

			# Ensure URL is a string so we can manipulate it safely.
			url = url.to_s

			# Feed URLs (Atom/RSS/etc.) should NOT be relativized (because it breaks).
			# These must stay absolute, otherwise the feed becomes invalid.
			return url if url.include?("feed") || url.end_with?(".xml")

			# Get the current page's metadata from Liquid’s context.
			page = @context.registers[:page] || {}
			page_url = page["url"].to_s

			# Jekyll pages without a permalink typically use directory URLs:
			#   /about/
			#
			# Pathname requires a file-like path to compute relative paths correctly.
			# So we convert directory URLs to their implied file:
			#   /about/ → /about/index.html
			#
			# This allows relative_path_from to work consistently.
			page_url = File.join(page_url, "index.html") if page_url.end_with?("/")

			# Safety check: if the *page* itself is a feed, bail out.
			return url if page_url.end_with?(".xml")

			# Strip leading slash from the target URL so Pathname treats it as relative.
			clean_url = url.sub(%r!^/!, "")

			# Strip the leading slash from the page path too.
			page_path = page_url.sub(%r!^/!, "")

			# Directory of the current page file.
			# Example:
			#   page_path = "foo/bar/index.html"
			#   page_dir  = "foo/bar"
			page_dir = Pathname(page_path).dirname

			begin

				# Compute the relative path from the *current page* to the target URL.
				# Example:
				#   clean_url = "css/main.css"
				#   page_dir  = "foo/bar"
				#
				# Result:
				#   "../../css/main.css"
				Pathname(clean_url).relative_path_from(page_dir).to_s

			rescue ArgumentError

				# If Pathname cannot compute a relative path (mixed roots, etc.),
				# fall back to the original URL instead of raising an error.
				url
			end
		end
	end
end

# Register the filter so Liquid replaces all {{ ... | relative_url }} calls.
Liquid::Template.register_filter(Jekyll::UrlRelativizer)

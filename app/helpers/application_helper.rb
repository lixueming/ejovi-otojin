module ApplicationHelper
	def tab_tag(name, url)
  	content_tag :li, (url.present? && request.path.match(url) ? {class: 'active'} : {}) do
			link_to name, url
		end
  end
end

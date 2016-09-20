class PageController < ActionController::Base

	def index
		url = "http://www.recifegourmet.com.br/"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@res = response.scan(/<h1.*?<\/h1>/m)
	end
end

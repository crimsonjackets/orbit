class HomeController < ApplicationController
	def index
		@info = HomeElement.all
	end
end

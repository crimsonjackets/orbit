class VacancyController < ApplicationController
	def index
		@main = VacancyMain.first
		@vacancy = VacancyElement.all
	end
end

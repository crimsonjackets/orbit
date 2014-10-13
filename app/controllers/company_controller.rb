class CompanyController < ApplicationController
    def index
        @companyInfo = About.first
        @member = Worker.all
    end
end

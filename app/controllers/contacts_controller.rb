class ContactsController < ApplicationController
    def index
        @contact = ContactElement.all
        @main = ContactMain.first
    end
end

class DoneController < ApplicationController
    def index
        @done = Done.all
    end
end

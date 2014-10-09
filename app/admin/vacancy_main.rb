ActiveAdmin.register VacancyMain do
  permit_params :title, :description

  actions :all, except:[ :new, :destroy ]

  controller do
    def index
      super do |format|
        redirect_to action: :show, id: 1 and return
      end
    end
  end

end

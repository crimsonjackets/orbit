ActiveAdmin.register ContactMain do
  permit_params :title
  actions :all, except:[ :new, :destroy ]
  menu priority: 10

  controller do
    def index
      super do |format|
        redirect_to action: :show, id: 1 and return
      end
    end
  end

  show do
    attributes_table do
      row :title
    end
  end

end

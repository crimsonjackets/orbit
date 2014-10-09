ActiveAdmin.register About do
  permit_params :title, :description
  actions :all, except:[ :new, :destroy ]
  menu priority: 4

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
      row :description
    end
  end

end

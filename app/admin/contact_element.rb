ActiveAdmin.register ContactElement do
  permit_params :title, :address, :phone

  index do
    column :title do |object|
      link_to object.title, oradmin_contact_element_path(object)
    end
    column :address
    column :phone
    actions
  end

  show do
    attributes_table do
      row :title
      row :address
      row :phone
    end
  end


end

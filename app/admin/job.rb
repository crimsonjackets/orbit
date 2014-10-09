ActiveAdmin.register Job do
  permit_params :title, :description
  menu priority: 6

  index do
    column :title
    column :description do |object|
      strip_tags(object.description).truncate(50)
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
    end
  end

end

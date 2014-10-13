ActiveAdmin.register Client do
  permit_params :title, :attachment
  menu parent: 'О компании'

  filter :title
  
  index do
    column :attachment do |object|
      link_to image_tag(object.attachment.url(:x63)), oradmin_client_path(object)
    end
    column :title do |object|
      link_to object.title, oradmin_client_path(object)
    end
    actions
  end

  show do
    attributes_table do
      row :attachment do
        image_tag resource.attachment.url(:x63)
      end
      row :title
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :attachment
    end
    f.actions
  end

end

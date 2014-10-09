ActiveAdmin.register HomeElement do
  permit_params :title, :attachment, :description

  filter :title
  filter :description
  
  index do
    column :attachment do |object|
      link_to image_tag(object.attachment.url(:thumb)), oradmin_home_element_path(object)
    end
    column :title do |object|
      link_to object.title, oradmin_home_element_path(object)
    end
    column :description do |object|
      strip_tags(object.description).truncate(50)
    end
    actions
  end

  show do
    attributes_table do
      row :attachment do
        image_tag resource.attachment.url(:original)
      end
      row :title
      row :description
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :attachment
      f.input :description
    end
    f.actions
  end

end

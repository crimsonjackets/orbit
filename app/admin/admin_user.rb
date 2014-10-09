ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  actions :all, except: :destroy

  index do
    column :email do |admin|
      link_to admin.email, oradmin_admin_user_path(admin)
    end
    column :current_sign_in_at
    column :current_sign_in_ip
    column :last_sign_in_at
    column :last_sign_in_ip
    column :sign_in_count
    actions
  end

  filter :email
  filter :last_sign_in_at
  filter :last_sign_in_ip
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :current_sign_in_at
      row :current_sign_in_ip
      row :last_sign_in_at
      row :last_sign_in_ip
      row :sign_in_count
    end
  end

end

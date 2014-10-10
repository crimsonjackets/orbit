class InitMigration < ActiveRecord::Migration
  def up
    # Create active admin table
    create_table(:admin_users) do |t|
      t.string   :email,              null: false, default: ""
      t.string   :encrypted_password, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.timestamps
    end

    add_index :admin_users, :email,                unique: true
    add_index :admin_users, :reset_password_token, unique: true


    create_table :home_mains do |t|
      t.string :title
      t.text :description
    end

    create_table :home_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :home_main
    end

    create_table :about_mains do |t|
      t.string :title
      t.text :description
    end

    create_table :about_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :about_main
    end

    create_table :jobs do |t|
      t.string :title
      t.text :description
    end

    create_table :vacancy_mains do |t|
      t.string :title
      t.text :description
    end

    create_table :vacancy_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :vacancy_main
    end

    create_table :dones do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
    end

    create_table :contact_mains do |t|
      t.string :title
      t.text :description
    end

    create_table :contact_elements do |t|
      t.string :title
      t.string :address
      t.string :phone #for free formatting
      t.belongs_to :contact_main
    end

    rename_table :about_mains, :abouts
    rename_table :about_elements, :workers
    remove_column :workers, :about_main_id
    remove_column :contact_elements, :contact_main_id
    remove_column :home_elements, :home_main_id
    remove_column :vacancy_elements, :vacancy_main_id
  end

  def down
    drop_table :admin_users
    drop_table :home_mains
    drop_table :home_elements
    drop_table :about_mains
    drop_table :about_elements
    drop_table :jobs
    drop_table :vacancy_mains
    drop_table :vacancy_elements
    drop_table :dones
    drop_table :contact_mains
    drop_table :contact_elements
    add_column :workers, :about_main_id, :integer
    
  end
end

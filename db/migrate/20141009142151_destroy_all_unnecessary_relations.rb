class DestroyAllUnnecessaryRelations < ActiveRecord::Migration
  def up
    remove_column :contact_elements, :contact_main_id
    remove_column :home_elements, :home_main_id
    remove_column :vacancy_elements, :vacancy_main_id
  end
  def down
    add_column :contact_elements, :contact_main_id, :integer
    add_column :home_elements, :home_main_id, :integer
    add_column :vacancy_elements, :vacancy_main_id, :integer
  end
end

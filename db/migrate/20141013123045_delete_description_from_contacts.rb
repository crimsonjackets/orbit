class DeleteDescriptionFromContacts < ActiveRecord::Migration
  def up
    remove_column :contact_mains, :description
  end
  def down
    add_column :contact_mains, :description, :text
  end
end

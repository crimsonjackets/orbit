class CreateContactElements < ActiveRecord::Migration
  def change
    create_table :contact_elements do |t|
      t.string :title
      t.string :address
      t.string :phone #for free formatting
      t.belongs_to :contact_main
    end
  end
end

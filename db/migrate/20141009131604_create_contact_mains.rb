class CreateContactMains < ActiveRecord::Migration
  def change
    create_table :contact_mains do |t|
      t.string :title
    end
  end
end

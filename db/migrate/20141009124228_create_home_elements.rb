class CreateHomeElements < ActiveRecord::Migration
  def change
    create_table :home_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :home_main
    end
  end
end

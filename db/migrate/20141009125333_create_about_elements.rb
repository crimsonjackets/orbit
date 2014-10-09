class CreateAboutElements < ActiveRecord::Migration
  def change
    create_table :about_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :about_main
    end
  end
end

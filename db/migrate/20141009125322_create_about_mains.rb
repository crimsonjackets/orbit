class CreateAboutMains < ActiveRecord::Migration
  def change
    create_table :about_mains do |t|
      t.string :title
      t.text :description
    end
  end
end

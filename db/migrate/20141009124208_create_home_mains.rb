class CreateHomeMains < ActiveRecord::Migration
  def change
    create_table :home_mains do |t|
      t.string :title
      t.text :description
    end
  end
end

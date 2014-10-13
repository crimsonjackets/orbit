class DeleteHomeMain < ActiveRecord::Migration
  def up
    drop_table :home_mains
  end
  def down
    create_table :home_mains do |t|
      t.string :title
      t.text :description
    end
  end
end

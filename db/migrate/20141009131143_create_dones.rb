class CreateDones < ActiveRecord::Migration
  def change
    create_table :dones do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
    end
  end
end

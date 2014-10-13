class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.attachment :attachment
      t.string :title
    end
  end
end

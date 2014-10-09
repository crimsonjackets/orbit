class DestroyAboutWorkerRelation < ActiveRecord::Migration
  def up
    remove_column :workers, :about_main_id
  end
  def down
    add_column :workers, :about_main_id, :integer
  end
end

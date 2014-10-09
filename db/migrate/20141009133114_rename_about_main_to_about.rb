class RenameAboutMainToAbout < ActiveRecord::Migration
  def change
    rename_table :about_mains, :abouts
    rename_table :about_elements, :workers
  end
end

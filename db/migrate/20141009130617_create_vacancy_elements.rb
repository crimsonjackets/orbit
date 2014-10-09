class CreateVacancyElements < ActiveRecord::Migration
  def change
    create_table :vacancy_elements do |t|
      t.string :title
      t.attachment :attachment
      t.text :description
      t.belongs_to :vacancy_main
    end
  end
end

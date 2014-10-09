class CreateVacancyMains < ActiveRecord::Migration
  def change
    create_table :vacancy_mains do |t|
      t.string :title
      t.text :description
    end
  end
end

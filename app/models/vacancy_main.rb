class VacancyMain < ActiveRecord::Base
  validates :title, :description, presence: true
end

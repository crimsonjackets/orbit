class HomeMain < ActiveRecord::Base
  validates :title, :description, presence: true
end
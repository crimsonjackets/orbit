class ContactMain < ActiveRecord::Base
  validates :title, presence: true
end

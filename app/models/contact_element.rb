class ContactElement < ActiveRecord::Base
  validates :title, :address, :phone, presence: true
end

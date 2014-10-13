class Client < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {x63:'62x63#'},
                    default_url: 'client_icons/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :attachment
  validates :title, presence: true
end

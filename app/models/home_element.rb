class HomeElement < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {thumb: '148x110#'},
                    default_url: 'home_photos/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
end

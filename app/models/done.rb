class Done < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {thumb: '421x172#',
                             x325:'842x325#'},
                    default_url: 'done_photos/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
end

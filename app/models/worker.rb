class Worker < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {thumb: '192x108#', medium:'576x324#'},
                    default_url: 'project_photos/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
end

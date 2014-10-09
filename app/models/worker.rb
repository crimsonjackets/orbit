class Worker < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {thumb: '134x110#',
                             x333:'268x333#',
                             x220:'268x220#'},
                    default_url: 'worker_photos/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
end

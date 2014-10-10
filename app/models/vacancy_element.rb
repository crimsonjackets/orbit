class VacancyElement < ActiveRecord::Base
  has_attached_file :attachment ,
                    styles: {thumb: '148x110#',
                             x220:'296x220#'},
                    default_url: 'vacancy_photos/:style/missing.png'
  validates_attachment_content_type :attachment,
                                    content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :attachment
  validates :title, :description, presence: true
end

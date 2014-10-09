class AddDefaultSingletonElements < ActiveRecord::Migration
  def change
    About.find(1) ? nil :
      About.create(id:          1, 
                   title:       'Sample About', 
                   description: 'Sample description')
    
    HomeMain.find(1) ? nil :
      HomeMain.create(id:           1, 
                      title:        'Sample Home Page', 
                      description:  'Sample description')
    
    VacancyMain.find(1) ? nil :
      VacancyMain.create(id:          1, 
                         title:       'Sample Vacancy Page', 
                         description: 'Sample description')
    
    ContactMain.find(1) ? nil :
      ContactMain.create(id:          1, 
                         title:       'Sample Contct Page', 
                         description: 'Sample description')
  end
end

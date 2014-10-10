[About, HomeMain, VacancyMain, ContactMain].each do |page|
  page.find_or_create_by(title: "Sample #{page.class}", description: "Sample description")
end

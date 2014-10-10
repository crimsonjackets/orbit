puts "Bootstrap page..."
[About, HomeMain, VacancyMain, ContactMain].each do |page|
  page.find_or_create_by(title: "Sample #{page.class}", description: "Sample description")
end

puts "Create admin user..."
AdminUser.find_or_create_by(email: 'cr@cr.cr') do |a|
  a.password = 'crimson0rb'
  a.password_confirmation = 'crimson0rb'
end

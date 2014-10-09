class AddAdminUser < ActiveRecord::Migration
  def up
    AdminUser.find_by(email: 'cr@cr.cr') ? nil :
      AdminUser.create(email: 'cr@cr.cr', 
                       password: 'crimson0rb', 
                       password_confirmation: 'crimson0rb')
  end
end

class AddAdmin < ActiveRecord::Migration[6.1]
  def change
    User.create! do |u|
      u.email = 'admin@test.com'
      u.password = 'password'
      u.admin = true
    end
  end
end

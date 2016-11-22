class SeedCoreUsers < ActiveRecord::Migration[5.0]
  def up
    user = User.find_or_initialize_by email: 'romalina85@gmail.com'
    user.assign_attributes name: 'Алиночка', password: '12345678'
    user.save
    Rails.logger.info "User #{user.name} => #{user.email}"

    user = User.find_or_initialize_by email: 'gafrom@gmail.com'
    user.assign_attributes name: 'Олег', password: '12345678'
    user.save
    Rails.logger.info "User #{user.name} => #{user.email}"
  end

  def down
    users = [User.find_by(email: 'romalina85@gmail.com')]
    users << User.find_by(email: 'gafrom@gmail.com')

    users.compact.each(&:destroy)
  end
end

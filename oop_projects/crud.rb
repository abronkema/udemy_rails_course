
module Crud
  require 'bcrypt'
  puts 'Module loaded successfully.'
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  
  def create_secure_credentials(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end
  
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:name] == username &&
        user_record[:password] == password
        return user_record
      end
    end
    'Invalid credentials'
  end
end

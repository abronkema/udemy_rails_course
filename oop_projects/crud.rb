require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
  { name: 'Anthony', password: 'password1' },
  { name: 'Becca', password: 'password2' },
  { name: 'Callie', password: 'password3' },
  { name: 'Birdie', password: 'password4' }
]

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

new_users = create_secure_credentials(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:name] == username &&
       user_record[:password] == password
      return user_record
    end
  end
  'Invalid credentials'
end

puts authenticate_user('Anthony', 'password1', new_users)

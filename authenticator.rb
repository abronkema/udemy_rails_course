# frozen_string_literal: true

users = [
  { name: 'Anthony', password: 'password1' },
  { name: 'Becca', password: 'password2' },
  { name: 'Callie', password: 'password3' },
  { name: 'Birdie', password: 'password4' }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:name] == username && user_record[:password] == password
      return user_record
    end
  end
  puts 'Incorrect information entered'
end

puts 'Welcome to the authenticator.'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare to the password'
puts 'If the password is correct, you will get back the user object'

attempts = 0
input = ''
while attempts < 4 || input == 'n'
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts 'Press n to quit or any other key to continue: '
  input = gets.chomp.downcase
  attempts += 1
end

puts 'Exceeded maximum attempts' if attempts == 4

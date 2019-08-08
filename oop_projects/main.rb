require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("test")
my_password2 = BCrypt::Password.create("test2")
my_password3 = BCrypt::Password.create("test3")
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"

puts my_password
puts my_password2
puts my_password3

# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 10
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

my_password = BCrypt::Password.new("$2a$12$IZUgYX3gmsVSrYhnTgFfjuw1k1d2Gh.NgZLIADOfQZMRtIetLaxM.")
my_password2 = BCrypt::Password.new("$2a$12$BydFq8.xvwM00qWYoC9z9.6yAXwzIIDNC5K9hVDEfmOigA5GkFITm")
my_password3 = BCrypt::Password.new("$2a$12$n/bSWO8b06KqCfRrCMvmy.CzwbobWwtyvHZDmLscfr8eBetP/0tZ.")
puts my_password == "test"     #=> true
puts my_password2 == "test2"     #=> true
puts my_password3 == "test3"     #=> true
# puts my_password == "not my password" #=> false
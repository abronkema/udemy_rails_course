require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :username -> can't be set via student.username

  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email},
     Username: #{@username}"
  end

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

end

anthony = Student.new('anthony', 'bronkema', 'a@a.com', 'ab', 'password1')

hashed_password = anthony.create_hash_digest(anthony.password)

puts hashed_password
class Student
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
becca = Student.new('becca', 'bronkema', 'b@a.com', 'bb', 'password1')
callie = Student.new('callie', 'bronkema', 'c@a.com', 'cb', 'password1')
birdie = Student.new('birdie', 'bronkema', 'd@a.com', 'dog', 'password1')

puts anthony
puts becca
puts callie
puts birdie
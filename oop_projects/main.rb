require_relative 'crud'

users = [
  { name: 'Anthony', password: 'password1' },
  { name: 'Becca', password: 'password2' },
  { name: 'Callie', password: 'password3' },
  { name: 'Birdie', password: 'password4' }
]

hashed_users = Crud.create_secure_credentials(users)
puts hashed_users
def seed_users
  User.create!(email: 'admin@dev', password: '12345678', password_confirmation: '12345678')
end
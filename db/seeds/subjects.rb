def seed_subjects
  5.times do |num|
    Subject.create!(name: "Subject #{num}", pin: '1234')
  end
end
def seed_subjects
  5.times do |num|
    subject = Subject.create!(name: "subject#{num}", pin: '1234')

    SubjectDatum.create!(subject: subject, payload: example_json_1)
    SubjectDatum.create!(subject: subject, payload: example_json_2)
  end
end

def example_json_1
  "{\"data\":{\"name\":\"subject\"}}"
end

def example_json_2
  "{\"data\":{\"name\":\"subject\",\"message\":\"#{[1,2,3,4,5,6,7].sample}\"}}"
end
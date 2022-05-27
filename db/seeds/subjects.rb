def seed_subjects
  5.times do |num|
    subject = Subject.create!(name: "subject#{num + 1}", pin: '1234')

    SubjectDatum.create!(subject: subject, payload: example_json_1)
    SubjectDatum.create!(subject: subject, payload: example_json_2)
    SubjectDatum.create!(subject: subject, payload: example_json_3)
  end
end

def example_json_1
  "{\"data\":{\"name\":\"subject\"}}"
end

def example_json_2
  "{\"data\":{\"name\":\"subject\",\"message\":\"#{[1,2,3,4,5,6,7].sample}\"}}"
end

def example_json_3
  "{\"data\":{\"message\":\"foo\",\"object\":{\"nested_message\":\"bar\",\"overly_nested_object\":{\"overly_nested_message\":\"you found me.\"}}}}"
end
def seed_subjects
  5.times do |num|
    subject = Subject.create!(name: "subject#{num + 1}", pin: '1234')

    SubjectDatum.create!(subject: subject, payload: example_json)
    SubjectDatum.create!(subject: subject, payload: example_json_nested)
    SubjectDatum.create!(subject: subject, payload: example_json_nested)
    SubjectDatum.create!(subject: subject, payload: example_json)
    SubjectDatum.create!(subject: subject, payload: example_json_nested)
    SubjectDatum.create!(subject: subject, payload: example_json_stringified)
  end
end

def example_json
  { data: 
    { message: "foo", date: "bar", solution: 42 } }
end

def example_json_nested
  { data: 
    { message: "foo", object:
      { nested_message: "bar", overly_nested_object: 
        { overly_nested_message: "you found me." } } } }
end

def example_json_stringified
  { data: "{\"name\":\"subject\",\"message\":\"foo\", \"date\":\"bar\",\"solution\":42}" } 
end

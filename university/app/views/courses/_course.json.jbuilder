json.extract! course, :id, :name, :dept, :number, :creditHr, :created_at, :updated_at
json.url course_url(course, format: :json)

json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :lastname, :DOB, :experience
  json.url employee_url(employee, format: :json)
end

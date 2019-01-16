48.times do |n|
	name = Faker::Name.name
	username = "username-#{n+1}"
	email = "example-#{n+1}@example.com"
	password = "password"
	User.create!(name: name,
				 username: username,
				 email: email,
				 password: password,
				 password_confirmation: password)
end
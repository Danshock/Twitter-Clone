# Users
User.create!(name:  "Example User",
			 username: "example-username",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

60.times do |n|
  name  = Faker::Name.name
  username = "username-#{n+1}"
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
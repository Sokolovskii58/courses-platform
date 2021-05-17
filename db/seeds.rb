
10.times do
  User.create!([{
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    role_ids: 3
  }])
end

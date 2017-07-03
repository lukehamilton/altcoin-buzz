desc 'Generating fake users for seeding data'
task fake_users: :environment do
  user_count = 10
  user_count.times do
    name = Faker::Name.name
    password = 'test'
    user_name = Faker::Internet.domain_word
    User.create! email: Faker::Internet.free_email(name),
      password: password,
      password_confirmation: password,
      username: user_name
  end
end

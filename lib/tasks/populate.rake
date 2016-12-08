namespace :db do

  desc "populates the database with users"
  task populate: :environment do
    require 'faker'
    100.times do
      User.create!(
      email: Faker::Internet.email,
      password: Faker::Internet.password(8),
      friend_id: rand(1...100)
      )
    end
  end
end

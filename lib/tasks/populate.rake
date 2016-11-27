namespace :db do

  desc "populates the database with users"
  task populate: :environment do
    require 'faker'
    100.times do
      User.create!(
      email: Faker::Internet.email,
      encrypted_password: Faker::Internet.password(8)
      )
    end
  end
end

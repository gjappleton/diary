namespace :db do

  desc "populates the database with assoc posts"
  task addposts: :environment do
    require 'faker'
    100.times do
      Post.create!(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph,
      user_id: rand(1...100)
      )
    end
  end
end

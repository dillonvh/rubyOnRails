# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "test@email", password: "None1234", password_confirmation: "None1234", first_name: "Dillon", last_name: "Test", views: 0)

5.times do |x|
  Post.create(title: "Title #{x}", body: "This is the content body for post #{x}", user_id: User.first.id)
end
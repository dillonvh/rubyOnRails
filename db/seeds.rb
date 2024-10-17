# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "test@email", password: "None1234", password_confirmation: "None1234", first_name: "Default", last_name: "User", views: 0)

Portfolio.create(name: "Index Portfolio")
last_id = Portfolio.maximum('id')

Asset.create(ticker: "XIC.TO", desired_weight: 30.0, quantity: 91, portfolio_id: last_id)
Asset.create(ticker: "XUU.TO", desired_weight: 45.0, quantity: 90, portfolio_id: last_id)
Asset.create(ticker: "XEF.TO", desired_weight: 20.0, quantity: 59, portfolio_id: last_id)
Asset.create(ticker: "XEC.TO", desired_weight: 5.0, quantity: 20, portfolio_id: last_id)


5.times do |x|
  Post.create(title: "Title #{x}", body: "This is the content body for post #{x}", user_id: User.first.id)
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Carb.destroy_all

Carb.create!([{
    breakfast: 750,
    lunch: 600,
    dinner: 800,
}])

Day.destroy_all

Day.create!([
    { name: "Monday" },
    { name: "Tuesday" },
    { name: "Wednesday" },
    { name: "Thursday" },
    { name: "Friday" },
    { name: "Saturday" },
    { name: "Sunday" }
]);

puts "Created #{Day.count} days."

User.destroy_all
    
User.create!([
    {
        first_name: "Fred",
        last_name: "Flintstone",
        dob: Date.iso8601("1963-02-02")
    }
])

puts "Created #{User.count} users."

Meal.destroy_all

Meal.create!([{
    users_id: 1,
    week: 1,
    days_id: 1,
    carbs_id: 1
}]);

puts "Created #{Meal.count} meals." 
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
columns = %w(first_name last_name dob address  mobile_no )
count = 1_000
slice = 10
count.times.each_slice(slice) do |group|
	students = []
	group.each do |iteration|
		students <<Faker::Name.first_name
		students <<Faker::Name.last_name
		students <<Faker::Date.birthday
		students <<Faker::Address.city
		# students <<Faker::Fee.fee_status
		students <<Faker::PhoneNumber.cell_phone
		# students <<Faker::Status.status
	end
end
Student.import columns, students
puts "Imported #{group.first + slice} students"
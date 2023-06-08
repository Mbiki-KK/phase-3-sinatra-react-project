require 'faker';

puts "🌱 Seeding spices..."

# Seed your database here


# Seed contacts
50.times do
  Contact.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    status: Faker::Lorem.word,
    location: Faker::Address.city,
    relation: Faker::Lorem.word
  )
end

puts "✅ Done seeding!"

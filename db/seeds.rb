# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
Food.destroy_all
Activity.destroy_all
Breed.destroy_all
AgeStage.destroy_all

puts "Seeding users..."

u1 = User.create(user_name: "iryna", password: "admin123", password_confirmation: "admin123", email: "isophiestein@gmail.com", avatar: "https://live.staticflickr.com/65535/51282850895_1151c7c8f8_c.jpg", created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

puts "Seeding food..."
avocado = "https://live.staticflickr.com/65535/51406867835_037e5a72ab_c.jpg"
strawberry = "https://live.staticflickr.com/65535/51405887496_a7da6b1831_c.jpg"
charcoal = "https://live.staticflickr.com/65535/51406867940_ee9135c814_c.jpg"
icecream = "https://live.staticflickr.com/65535/51405887526_92a2cd1d59_c.jpg"

f1 = Food.create(name: "avocado", image_url: avocado, food_index: 3, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

f2 = Food.create(name: "strawberry", image_url: strawberry, food_index: 2, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

f3 = Food.create(name: "icecream", image_url: icecream, food_index:4, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

f4 = Food.create(name: "charcoal", image_url: charcoal, food_index: 1, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

puts "Seeding activities..."

coding = "https://media.giphy.com/media/V4NSR1NG2p0KeJJyr5/giphy.gif"
swimming = "https://media.giphy.com/media/3o72FixDcUYCNdCA1O/source.gif"
hiking = "https://media.giphy.com/media/bFcrER7SWuvsTAXkiw/source.gif"
ball = "https://media.giphy.com/media/P6yorty2fLSgg/source.gif"

a1 = Activity.create(name: "coding", image: coding, act_index: 1,created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

a2 =Activity.create(name: "swimming", image: swimming, act_index: 4,created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

a3=Activity.create(name: "hiking", image: hiking, act_index: 3,created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

a4=Activity.create(name: "ball", image: ball, act_index: 2,created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

puts "Seeding breeds..."

b1 = Breed.create(name: "tibbar", created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

puts "Seeding agestages..."
baby_t = "https://i.imgur.com/8hStjCF.gif"
teen_t = "https://i.imgur.com/66WU0Zb.gif"
adult_t = "https://i.imgur.com/HEZ30TE.gif"
senior_t = "https://i.imgur.com/lwyptwW.gif"

as1 = AgeStage.create(name: "baby-tibbar", image_url: baby_t, breed_id: b1.id, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

as2 =AgeStage.create(name: "teen-tibbar", image_url: teen_t, breed_id: b1.id, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

as3 = AgeStage.create(name: "adult-tibbar", image_url: adult_t, breed_id: b1.id, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")

as4 = AgeStage.create(name: "senior-tibbar", image_url: senior_t, breed_id: b1.id, created_at: "2021-08-27 21:15:56.036450000 +0000", updated_at: "2021-08-27 21:15:56.036450000 +0000")


puts "Seeding pets..."

p1 = Pet.create(
    name: "Panzon", 
    avatar: "https://i.imgur.com/HEZ30TE.gif",
    birthday: DateTime.parse("09/01/2009 17:00"),
    healthy: true,
    hungry: 4,
    sleepy: 1,
    bored: 3,
    alive: true,
    food_id: f1.id,
    activity_id: a2.id,
    breed_id: b1.id,
    user_id: u1.id,
    created_at: "2021-08-27 21:15:56.036450000 +0000",
    updated_at: "2021-08-27 21:15:56.036450000 +0000"
)

puts "DONE!!!"


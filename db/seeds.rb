require 'open-uri'

puts "Cleaning db..."
Achievement.destroy_all
Proportion.destroy_all
Goal.destroy_all
User.destroy_all
Task.destroy_all
Family.destroy_all
Category.destroy_all

puts "Creating categories..."

chores = Category.create(name: "chores")
readings = Category.create(name: "readings")
grades = Category.create(name: "grades")

puts "Creating family..."

family = Family.new(name: "dupont")

puts "Creating chores..."

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582304003/G9kW3HTMFcsxdvG3bVHV1oXN.png')
task_one = Task.new(name: "Dishes", description: "wash the dishes", category: chores)
puts "test 1"
task_one.photo.attach(io: file, filename: 'dishes_zrctlq.png', content_type: 'image/png')
task_one.save!
puts "test 2"

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727925/OCHILD/car_wash_ekyaej.svg')
task_two = Task.new(name: "Car Wash", description: "clean the car", category: chores)
task_two.photo.attach(io: file, filename: 'car_wash_ekyaej.svg', content_type: 'image/svg')
task_two.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/washing_basket_ueacsb.svg')
task = Task.new(name: "Laundry", description: "fold the laundry", category: chores)
task.photo.attach(io: file, filename: 'washing_basket_ueacsb.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727951/OCHILD/window_cleaner_awr7ls.svg')
task = Task.new(name: "Cleaning", description: "clean the windows", category: chores)
task.photo.attach(io: file, filename: 'window_cleaner_awr7ls.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/toilet_rj9cra.svg')
task = Task.new(name: "Toilet", description: "clean the toilets", category: chores)
task.photo.attach(io: file, filename: 'toilet_rj9cra.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/washing_machine_nzg7tm.svg')
task = Task.new(name: "Washing Machine", description: "wash your clothes", category: chores)
task.photo.attach(io: file, filename: 'washing_machine_nzg7tm.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/vacuum_cleaner_do35l4.svg')
task = Task.new(name: "Vacuum", description: "vacuum your room", category: chores)
task.photo.attach(io: file, filename: 'vacuum_cleaner_do35l4.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/vacuum_cleaner_do35l4.svg')
task = Task.new(name: "Vacuum", description: "vacuum your house", category: chores)
task.photo.attach(io: file, filename: 'vacuum_cleaner_do35l4.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/trash_crv5mu.svg')
task = Task.new(name: "Bin", description: "take the bins out", category: chores)
task.photo.attach(io: file, filename: 'trash_crv5mu.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727928/OCHILD/setting_laundry_cgfsdo.svg')
task = Task.new(name: "Laundry", description: "hangs the washing up", category: chores)
task.photo.attach(io: file, filename: 'setting_laundry_cgfsdo.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727949/OCHILD/water_can_jougsi.svg')
task = Task.new(name: "Gardening", description: "water the plants", category: chores)
task.photo.attach(io: file, filename: 'water_can_jougsi.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727928/OCHILD/sink_dqtkjd.svg')
task = Task.new(name: "Cleaning", description: "clean the bathroom", category: chores)
task.photo.attach(io: file, filename: 'sink_dqtkjd.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727928/OCHILD/mop_lco7jh.svg')
task = Task.new(name: "Cleaning", description: "mop the floor", category: chores)
task.photo.attach(io: file, filename: 'mop_lco7jh.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727927/OCHILD/housekeeping_ltefib.svg')
task = Task.new(name: "Cleaning", description: "tidy your house", category: chores)
task.photo.attach(io: file, filename: 'housekeeping_ltefib.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727927/OCHILD/iron_lrxiie.svg')
task = Task.new(name: "Ironning", description: "iron your clothes", category: chores)
task.photo.attach(io: file, filename: 'iron_lrxiie.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727926/OCHILD/clean_shoes_slje4v.svg')
task = Task.new(name: "Cleaning", description: "clean your shoes", category: chores)
task.photo.attach(io: file, filename: 'clean_shoes_slje4v.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727926/OCHILD/cleaning_set_rjmjvp.svg')
task = Task.new(name: "Cleaning", description: "clean the kitchen", category: chores)
task.photo.attach(io: file, filename: 'cleaning_set_rjmjvp.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727926/OCHILD/cleaning_desk_h6r6gs.svg')
task = Task.new(name: "Cleaning", description: "tidy your room", category: chores)
task.photo.attach(io: file, filename: 'cleaning_desk_h6r6gs.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582727913/OCHILD/broom_lhlhrn.svg')
task = Task.new(name: "Cleaning", description: "clean the house", category: chores)
task.photo.attach(io: file, filename: 'broom_lhlhrn.svg', content_type: 'image/svg')
task.save!

puts "Creating grades..."

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582729922/OCHILD/grade_h4llnv.svg')
task = Task.new(name: "History", description: "new grade in history", category: grades)
task.photo.attach(io: file, filename: 'grade_h4llnv.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582729922/OCHILD/grade_h4llnv.svg')
task = Task.new(name: "Litterature", description: "new grade in litterature", category: grades)
task.photo.attach(io: file, filename: 'grade_h4llnv.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582729922/OCHILD/grade_h4llnv.svg')
task = Task.new(name: "Math", description: "new grade in math", category: grades)
task.photo.attach(io: file, filename: 'grade_h4llnv.svg', content_type: 'image/svg')
task.save!

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582729922/OCHILD/grade_h4llnv.svg')
task_three = Task.new(name: "Biology", description: "new grade in biology", category: grades)
task_three.photo.attach(io: file, filename: 'grade_h4llnv.svg', content_type: 'image/svg')
task_three.save!

puts "Creating readings..."

file = URI.open('https://res.cloudinary.com/dz8itoyac/image/upload/v1582730330/OCHILD/reading_tg0hty.svg')
task = Task.new(name: "Reading", description: "reading a new book", category: readings)
task.photo.attach(io: file, filename: 'reading_tg0hty.svg', content_type: 'image/svg')
task.save!

puts "Creating everything else..."

child = User.new(first_name: "nini", last_name: "dupont", adult: false, date_of_birth: "2010-12-01", family: family, email: "test@test.com", password: "azerty")

parent = User.new(first_name: "nono", last_name: "dupont", adult: true, date_of_birth: "1987-12-01", family: family, email: "test2@test.com", password: "azerty")

goal = Goal.new(title: "anniversaire Camille", end_date: "2020-03-03", total_points: 500, done: false, user: child)

proportion_one = Proportion.new(percent: 70, goal: goal, category: chores)
proportion_two = Proportion.new(percent: 30, goal: goal, category: grades)

achievement_one = Achievement.new(due_at: "2020-02-28", achieve: false, done: false, user: child, task: task_one, points: 25)
achievement_two = Achievement.new(due_at: "2020-03-01", achieve: false, done: true, user: child, task: task_two, points: 35)
achievement_three = Achievement.new(due_at: "2020-03-01", achieve: false, done: true, user: child, task: task_three, points: 18)

# category.save
family.save
child.save
parent.save
goal.save
proportion_one.save
proportion_two.save
achievement_one.save
achievement_two.save

puts "Finish"

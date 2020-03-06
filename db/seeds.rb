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

chores = Category.create(name: "Chores")
readings = Category.create(name: "Readings")
grades = Category.create(name: "Grades")

puts "Creating family..."

family = Family.new(name: "dupont")

puts "Creating chores..."


task_one = Task.new(name: "Dishes", description: "wash the dishes", category: chores)
task_one.photo.attach(io: File.open('./app/assets/images/dishes.png'), filename: 'dishes.png')
task_one.save!

task = Task.new(name: "Cleaning", description: "tidy your room", category: chores)
task.photo.attach(io: File.open('./app/assets/images/cleaning_desk.png'), filename: 'cleaning_desk.png')
task.save!

task = Task.new(name: "Laundry", description: "hangs the washing up", category: chores)
task.photo.attach(io: File.open('./app/assets/images/setting_laundry.png'), filename: 'setting_laundry.png')
task.save!

task = Task.new(name: "Gardening", description: "water the plants", category: chores)
task.photo.attach(io: File.open('./app/assets/images/water_can.png'), filename: 'water_can.png')
task.save!

task_two = Task.new(name: "Car Wash", description: "clean the car", category: chores)
task_two.photo.attach(io: File.open('./app/assets/images/car_wash.png'), filename: 'car_wash.png')
task_two.save!

task = Task.new(name: "Laundry", description: "fold the laundry", category: chores)
task.photo.attach(io: File.open('./app/assets/images/washing_basket.png'), filename: 'washing_basket.png')
task.save!

task = Task.new(name: "Cleaning", description: "clean the windows", category: chores)
task.photo.attach(io: File.open('./app/assets/images/window_cleaner.png'), filename: 'window_cleaner.png')
task.save!

task = Task.new(name: "Toilet", description: "clean the toilets", category: chores)
task.photo.attach(io: File.open('./app/assets/images/toilet.png'), filename: 'toilet.png')
task.save!

task = Task.new(name: "Washing Machine", description: "wash your clothes", category: chores)
task.photo.attach(io: File.open('./app/assets/images/washing_machine.png'), filename: 'washing_machine.png')
task.save!

task = Task.new(name: "Vacuum", description: "vacuum your room", category: chores)
task.photo.attach(io: File.open('./app/assets/images/vacuum_cleaner.png'), filename: 'vacuum_cleaner.png')
task.save!

task = Task.new(name: "Vacuum", description: "vacuum your house", category: chores)
task.photo.attach(io: File.open('./app/assets/images/vacuum_cleaner.png'), filename: 'vacuum_cleaner.png')
task.save!

task = Task.new(name: "Trash", description: "take the bins out", category: chores)
task.photo.attach(io: File.open('./app/assets/images/trash.png'), filename: 'trash.png')
task.save!

task = Task.new(name: "Cleaning", description: "clean the bathroom", category: chores)
task.photo.attach(io: File.open('./app/assets/images/sink.png'), filename: 'sink.png')
task.save!

task = Task.new(name: "Cleaning", description: "mop the floor", category: chores)
task.photo.attach(io: File.open('./app/assets/images/mop.png'), filename: 'mop.png')
task.save!

task = Task.new(name: "Cleaning", description: "tidy your house", category: chores)
task.photo.attach(io: File.open('./app/assets/images/housekeeping.png'), filename: 'housekeeping.png')
task.save!

task = Task.new(name: "Ironning", description: "iron your clothes", category: chores)
task.photo.attach(io: File.open('./app/assets/images/iron.png'), filename: 'iron.png')
task.save!

task = Task.new(name: "Cleaning", description: "clean your shoes", category: chores)
task.photo.attach(io: File.open('./app/assets/images/clean_shoes.png'), filename: 'clean_shoes.png')
task.save!

task = Task.new(name: "Cleaning", description: "clean the kitchen", category: chores)
task.photo.attach(io: File.open('./app/assets/images/cleaning_set.png'), filename: 'cleaning_set.png')
task.save!

task = Task.new(name: "Cleaning", description: "clean the house", category: chores)
task.photo.attach(io: File.open('./app/assets/images/broom.png'), filename: 'broom.png')
task.save!

puts "Creating grades..."

task = Task.new(name: "History", description: "new grade in history", category: grades)
task.photo.attach(io: File.open('./app/assets/images/grade.png'), filename: 'grade.png')
task.save!

task = Task.new(name: "Litterature", description: "new grade in litterature", category: grades)
task.photo.attach(io: File.open('./app/assets/images/grade.png'), filename: 'grade.png')
task.save!

task = Task.new(name: "Math", description: "new grade in math", category: grades)
task.photo.attach(io: File.open('./app/assets/images/grade.png'), filename: 'grade.png')
task.save!

task_three = Task.new(name: "Biology", description: "new grade in biology", category: grades)
task_three.photo.attach(io: File.open('./app/assets/images/grade.png'), filename: 'grade.png')
task_three.save!

puts "Creating readings..."

task = Task.new(name: "Reading", description: "reading a new book", category: readings)
task.photo.attach(io: File.open('./app/assets/images/reading.png'), filename: 'reading.png')

task.save!

puts "Creating everything else..."

child = User.new(first_name: "Stephanie", last_name: "Dupont", adult: false, date_of_birth: "2010-12-01", family: family, email: "test@test.com", password: "azerty")
child.photo.attach(io: File.open('./app/assets/images/avatarKid.png'), filename: 'avatarKid.png.png')

parent = User.new(first_name: "Lucile", last_name: "Dupont", adult: true, date_of_birth: "1987-12-01", family: family, email: "test2@test.com", password: "azerty")
parent.photo.attach(io: File.open('./app/assets/images/avatarAdult.png'), filename: 'avatarAdult.png')

# goal = Goal.new(title: "Anniversaire Camille", end_date: "2020-03-30", total_points: 500, done: false, user: child)

# proportion_one = Proportion.new(percent: 50, goal: goal, category: chores)
# proportion_two = Proportion.new(percent: 30, goal: goal, category: grades)
# proportion_tree = Proportion.new(percent: 20, goal: goal, category: readings)

# achievement_one = Achievement.new(due_at: "Fri, 20 Mar 2020", achieve: false, done: false, user: child, task: task_one, points: 25)
# achievement_two = Achievement.new(due_at: "Fri, 10 Mar 2020", achieve: false, done: true, user: child, task: task_two, points: 35)
# achievement_three = Achievement.new(due_at: "Fri, 8 Mar 2020", achieve: false, done: true, user: child, task: task_three, points: 18)

family.save
child.family_name = child.family.name
child.save
parent.family_name = parent.family.name
parent.save
# goal.save
# proportion_one.save
# proportion_two.save
# proportion_tree.save
# achievement_one.save
# achievement_two.save
# achievement_three.save

puts "Finish"

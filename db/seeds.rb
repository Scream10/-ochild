puts "Cleaning db..."
Achievement.destroy_all
Proportion.destroy_all
Goal.destroy_all
User.destroy_all
Task.destroy_all
Family.destroy_all
Category.destroy_all

puts "Creating db..."

category = Category.new(name: "chores")
family = Family.new(name: "dupont")
task = Task.new(name: "dishes", description: "wash dishes", category: category)
child = User.new(first_name: "nini", last_name: "dupont", adult: false, date_of_birth: "2010-12-01", family: family, email: "test@test.com", password: "azerty")
parent = User.new(first_name: "nono", last_name: "dupont", adult: true, date_of_birth: "1987-12-01", family: family, email: "test2@test.com", password: "azerty")
goal = Goal.new(title: "anniversaire Camille", end_date: "2020-02-28", total_points: 500, done: false, user: child)
proportion = Proportion.new(percent: 100, goal: goal, category: category)
achievement = Achievement.new(due_at: "2019-12-01", achieve: false, done: false, user: child, task: task, points: 300)

category.save
family.save
task.save
child.save
parent.save
goal.save
proportion.save
achievement.save

puts "Finish"

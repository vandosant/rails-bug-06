User.destroy_all
TaskList.destroy_all
Task.destroy_all

User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

task_list = TaskList.create!(name: "Work List")
task_list.tasks.create!(description: "Original Task", due_date: 2.days.from_now)

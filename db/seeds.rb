# Clean existing data
PostEditor.destroy_all
Post.destroy_all
Editor.destroy_all
User.destroy_all

# Users
mohamed = User.create!(
  name: "Mohamed",
  email: "mohamed@example.com"
)

ahmed = User.create!(
  name: "Ahmed",
  email: "ahmed@example.com"
)

# Editors
editor1 = Editor.create!(
  name: "Sara"
)

editor2 = Editor.create!(
  name: "Ali"
)

editor3 = Editor.create!(
  name: "Omar"
)

# Posts
post1 = Post.create!(
  title: "Ruby Basics",
  creator: mohamed
)

post2 = Post.create!(
  title: "Rails Associations",
  creator: mohamed
)

post3 = Post.create!(
  title: "Database Migrations",
  creator: ahmed
)

# Post-Editor Relations
PostEditor.create!(
  post: post1,
  editor: editor1
)

PostEditor.create!(
  post: post1,
  editor: editor2
)

PostEditor.create!(
  post: post2,
  editor: editor2
)

PostEditor.create!(
  post: post3,
  editor: editor1
)

PostEditor.create!(
  post: post3,
  editor: editor3
)
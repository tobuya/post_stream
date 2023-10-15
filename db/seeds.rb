Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

# Users
User.create(
  name: "User 1",
  email: "user1@example.com",
  password: "password123",
  bio: "Bio for User 1"
)

User.create(
  name: "User 2",
  email: "user2@example.com",
  password: "password123",
  bio: "Bio for User 2"
)

User.create(
  name: "User 3",
  email: "user3@example.com",
  password: "password123",
  bio: "Bio for User 3"
)

User.create(
  name: "User 4",
  email: "user4@example.com",
  password: "password123",
  bio: "Bio for User 4"
)

User.create(
  name: "User 5",
  email: "user5@example.com",
  password: "password123",
  bio: "Bio for User 5"
)

User.create(
  name: "User 6",
  email: "user6@example.com",
  password: "password123",
  bio: "Bio for User 6"
)

# Posts
user1 = User.find_by(email: "user1@example.com")
user1.posts.create(
  title: "Post by User 1",
  text: "This is a post created by User 1."
)
user1.posts.create(
  title: "Post by User 1",
  text: "This is post 2 created by User 1."
)
user1.posts.create(
  title: "Post by User 1",
  text: "This is post 3 created by User 1."
)
user1.posts.create(
  title: "Post by User 1",
  text: "This is post 4 created by User 1."
)
user1.posts.create(
  title: "Post by User 1",
  text: "This is post 5 created by User 1."
)

user2 = User.find_by(email: "user2@example.com")
user2.posts.create(
  title: "Post by User 2",
  text: "This is a post created by User 2."
)
user2.posts.create(
  title: "Post by User 2",
  text: "This is post 2 created by User 2."
)
user2.posts.create(
  title: "Post by User 2",
  text: "This is post 3 created by User 2."
)
user2.posts.create(
  title: "Post by User 2",
  text: "This is post 4 created by User 2."
)
user2.posts.create(
  title: "Post by User 2",
  text: "This is post 5 created by User 2."
)

user3 = User.find_by(email: "user3@example.com")
user3.posts.create(
  title: "Post by User 3",
  text: "This is a post created by User 3."
)
user3.posts.create(
  title: "Post by User 3",
  text: "This is post 2 created by User 3."
)
user3.posts.create(
  title: "Post by User 3",
  text: "This is post 3 created by User 3."
)
user3.posts.create(
  title: "Post by User 3",
  text: "This is post 4 created by User 3."
)
user3.posts.create(
  title: "Post by User 3",
  text: "This is post 5 created by User 3."
)

user4 = User.find_by(email: "user4@example.com")
user4.posts.create(
  title: "Post by User 4",
  text: "This is a post created by User 4."
)
user4.posts.create(
  title: "Post by User 4",
  text: "This is post 2 created by User 4."
)
user4.posts.create(
  title: "Post by User 4",
  text: "This is post 3 created by User 4."
)
user4.posts.create(
  title: "Post by User 4",
  text: "This is post 4 created by User 4."
)
user4.posts.create(
  title: "Post by User 4",
  text: "This is post 5 created by User 4."
)

user5 = User.find_by(email: "user5@example.com")
user5.posts.create(
  title: "Post by User 5",
  text: "This is a post created by User 5."
)
user5.posts.create(
  title: "Post by User 5",
  text: "This is post 2 created by User 5."
)
user5.posts.create(
  title: "Post by User 5",
  text: "This is post 3 created by User 5."
)
user5.posts.create(
  title: "Post by User 5",
  text: "This is post 4 created by User 5."
)
user5.posts.create(
  title: "Post by User 5",
  text: "This is post 5 created by User 5."
)

user6 = User.find_by(email: "user6@example.com")
user6.posts.create(
  title: "Post by User 6",
  text: "This is a post created by User 6."
)
user6.posts.create(
  title: "Post by User 6",
  text: "This is post 2 created by User 6."
)
user6.posts.create(
  title: "Post by User 6",
  text: "This is post 3 created by User 6."
)
user6.posts.create(
  title: "Post by User 6",
  text: "This is post 4 created by User 6."
)
user6.posts.create(
  title: "Post by User 6",
  text: "This is post 5 created by User 6."
)

# Comments
post_user1 = user1.posts.first
post_user1.comments.create(
  text: "Comment 1 on User 1's post",
  author: user2
)
post_user1.comments.create(
  text: "Comment 2 on User 1's post",
  author: user3
)

post_user2 = user2.posts.first
post_user2.comments.create(
  text: "Comment 1 on User 2's post",
  author: user3
)
post_user2.comments.create(
  text: "Comment 2 on User 2's post",
  author: user4
)

post_user3 = user3.posts.first
post_user3.comments.create(
  text: "Comment 1 on User 3's post",
  author: user4
)
post_user3.comments.create(
  text: "Comment 2 on User 3's post",
  author: user5
)

post_user4 = user4.posts.first
post_user4.comments.create(
  text: "Comment 1 on User 4's post",
  author: user5
)
post_user4.comments.create(
  text: "Comment 2 on User 4's post",
  author: user6
)

post_user5 = user5.posts.first
post_user5.comments.create(
  text: "Comment 1 on User 5's post",
  author: user6
)
post_user5.comments.create(
  text: "Comment 2 on User 5's post",
  author: user1
)

post_user6 = user6.posts.first
post_user6.comments.create(
  text: "Comment 1 on User 6's post",
  author: user1
)
post_user6.comments.create(
  text: "Comment 2 on User 6's post",
  author: user2
)

# Likes
post_user1.likes.create(author: user2)
post_user1.likes.create(author: user3)

post_user2.likes.create(author: user3)
post_user2.likes.create(author: user4)
post_user2.likes.create(author: user1)
post_user2.likes.create(author: user2)

post_user3.likes.create(author: user4)
post_user3.likes.create(author: user5)
post_user3.likes.create(author: user1)

post_user4.likes.create(author: user5)
post_user4.likes.create(author: user1)
post_user4.likes.create(author: user2)
post_user4.likes.create(author: user3)
post_user4.likes.create(author: user6)

post_user5.likes.create(author: user6)
post_user5.likes.create(author: user1)

post_user6.likes.create(author: user1)
post_user6.likes.create(author: user2)

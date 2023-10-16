Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

# Users
User.create(
  name: "Marcus",
  email: "marcus@example.com",
  password: "password123",
  bio: "Descendant of Marcus Aurelius"
)

User.create(
  name: "Bob",
  email: "bob@example.com",
  password: "password123",
  bio: "Reggea Music artist"
)

User.create(
  name: "Aaron",
  email: "aaron@example.com",
  password: "password123",
  bio: "No bio needed, just look at me!"
)

User.create(
  name: "Takeoff",
  email: "takeoff@example.com",
  password: "password123",
  bio: "Just another lab from the lab"
)

User.create(
  name: "Sean",
  email: "sean@example.com",
  password: "password123",
  bio: "Director at SeanSonics"
)

User.create(
  name: "Odhiambo",
  email: "odhiambo@example.com",
  password: "password123",
  bio: "Football player from Koth Biro"
)

# Posts
user1 = User.find_by(email: "marcus@example.com")
user1.posts.create(
  title: "Marcus Aurelius, the Philosopher Emperor",
  text: "
  Marcus Aurelius was not just an emperor;
  he was also a renowned Stoic philosopher who wrote the famous 
  'Meditations,' a collection of personal reflections on life, ethics,
  and virtue.
  "
)
user1.posts.create(
  title: "Marcus Aurelius and the Antonine Plague",
  text: "
  During his reign, Marcus Aurelius faced the Antonine Plague,
  which decimated the Roman Empire.
  This pandemic significantly impacted his rule and leadership
  "
)
user1.posts.create(
  title: "The Adopted Emperor",
  text: "
  Marcus Aurelius was not born into the imperial family. 
  He became emperor after being adopted by his predecessor, Antoninus Pius, 
  demonstrating that Roman emperors could be chosen based 
  on merit rather than birthright
  "
)
user1.posts.create(
  title: "The Five Good Emperors",
  text: "
  Marcus Aurelius is often considered one of the 'Five Good Emperors' of Rome,
  a period known for stability and prosperity. 
  These emperors were praised for their wise and just rule
  "
)
user1.posts.create(
  title: "The Roman Emperor Who Preferred Peace",
  text: "Marcus Aurelius was more interested in philosophy and governance than military conquest. 
  He actively sought to maintain peace and stability in the Roman Empire during his rule, 
  despite external pressures"
)

user2 = User.find_by(email: "bob@example.com")
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

user3 = User.find_by(email: "aaron@example.com")
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

user4 = User.find_by(email: "takeoff@example.com")
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

user5 = User.find_by(email: "sean@example.com")
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

user6 = User.find_by(email: "odhiambo@example.com")
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

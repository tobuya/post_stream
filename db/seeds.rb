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
  bio: "A Reggea Music artist"
)

User.create(
  name: "Aaron",
  email: "aaron@example.com",
  password: "password123",
  bio: "No bio needed, just look at me!"
)

User.create(
  name: "Mayan",
  email: "mayan@example.com",
  password: "password123",
  bio: "Just another lad from the lab"
)

User.create(
  name: "Sean",
  email: "jobs@example.com",
  password: "password123",
  bio: "Computer Scientist"
)

User.create(
  name: "Odhiambo",
  email: "odhiambo@example.com",
  password: "password123",
  bio: "Young African Leader"
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
user1.posts.create(
  title: "Philosopher-King: Marcus Aurelius' Stoic Wisdom",
  text: "Marcus Aurelius, often referred to as the 'Philosopher-King,' was not only an emperor but also a philosopher. 
  His 'Meditations' is a timeless work of Stoic philosophy, offering insights into wisdom, resilience, and the human condition. 
  Aurelius' blend of leadership and wisdom continues to inspire leaders and thinkers to this day."
)
user1.posts.create(
  title: "The Roman Empire's Stoic Ruler",
  text: "As the Roman Emperor, Marcus Aurelius ruled during a challenging period, known as the 'Pax Romana.' 
  His stoic and ethical approach to leadership made him one of the most respected emperors in Roman history. 
  His reign focused on justice, wisdom, and compassion, leaving a lasting legacy in the annals of Roman governance."
)



user2 = User.find_by(email: "bob@example.com")
user2.posts.create(
  title: "The Birth of a Legend: Bob Marley's Early Life",
  text: "Bob Marley, the iconic reggae musician, was born on February 6, 1945, in Nine Mile, Jamaica.
  Raised by his mother and influenced by Rastafarian beliefs, his early years laid the 
  foundation for his music and message of love and unity."
)
user2.posts.create(
  title: "One Love: The Message Behind Bob Marley's Music",
  text: "Bob Marley's music was not just about catchy melodies;
  it carried a powerful message of peace, love, and unity.
  His most famous song, 'One Love,' became an anthem for social change 
  and a call for people of all backgrounds to come together as one."
)
user2.posts.create(
  title: "Legend Lives On: Bob Marley's Impact on Reggae Music",
  text: "Bob Marley's influence on reggae music is immeasurable. 
  He and his band, The Wailers, transformed the genre, introducing it to a global audience. 
  Marley's unique blend of reggae, rock, and soul created a sound that continues to inspire musicians worldwide."
)
user2.posts.create(
  title: "Rastafarian Faith: Bob Marley's Spiritual Journey",
  text: "Bob Marley's faith was deeply rooted in Rastafarianism, 
  a Jamaican religion that emphasizes the divinity of Haile Selassie I. 
  This spiritual connection played a significant role in his life and music, 
  with lyrics often reflecting his beliefs and the quest for social justice."
)

user3 = User.find_by(email: "aaron@example.com")
user3.posts.create(
  title: "Early Struggles: Charles Bukowski's Difficult Youth.",
  text: "Charles Bukowski, the celebrated poet and novelist, 
  faced a turbulent childhood marked by poverty, abusive relationships, 
  and a challenging relationship with his father. These early hardships significantly influenced his writing, 
  which often reflected the raw realities of life."
)
user3.posts.create(
  title: "Post Office: Bukowski's Semi-Autobiographical Novel",
  text: "One of Bukowski's most famous works, 'Post Office,' is a semi-autobiographical novel based on his experiences as a postal worker. 
  This novel captures the mundane and often degrading aspects of blue-collar work while showcasing Bukowski's unique writing style."
)
user3.posts.create(
  title: "The 'Dirty Realism' of Bukowski's Writing",
  text: "Charles Bukowski is often associated with the literary movement known as 'Dirty Realism.' 
  His works are characterized by gritty, unfiltered depictions of life, exploring themes of alcoholism, poverty, and the human condition. 
  This unvarnished approach to storytelling set him apart in the literary world."
)
user3.posts.create(
  title: "Hank Chinaski: Bukowski's Alter Ego",
  text: "Bukowski created the character Hank Chinaski, a semi-autobiographical figure who appears in many of his works. 
  This persona allowed Bukowski to explore his own experiences with an element of fiction, adding depth to his storytelling and creating a cult following around the character."
)
user3.posts.create(
  title: "A Prolific Poet: Bukowski's Vast Body of Work",
  text: "Charles Bukowski was an incredibly prolific writer, producing numerous novels, short stories, 
  and poems during his career. His works continue to be celebrated for their brutal honesty, unapologetic exploration of life's hardships, 
  and their ability to connect with readers on a deeply human level."
)
user3.posts.create(
  title: "Bukowski's Unconventional Path to Literary Success",
  text: "Charles Bukowski's journey to becoming a renowned writer was far from conventional. 
  His early life was marked by hardship and struggles, but his determination and passion for writing eventually led him to literary success. 
  His story is a testament to the idea that creativity knows no boundaries."
)
user3.posts.create(
  title: "The Beat Generation Influence: Bukowski's Literary Connections",
  text: "Charles Bukowski was part of the Beat Generation, a literary movement that challenged traditional norms. 
  His writing was influenced by notable figures like Allen Ginsberg and Jack Kerouac. 
  Bukowski's contributions to the movement added a distinct voice, reflecting the grittier, more realistic side of life."
)
user3.posts.create(
  title: "Finding Beauty in the Grit: Bukowski's Artistic Vision",
  text: "Charles Bukowski had a unique talent for finding beauty in the everyday grit and struggles of life. 
  His writing often focused on the underbelly of society, shining a light on the human experience in its rawest form. 
  This ability to transform the ordinary into the extraordinary set him apart as a writer."
)
user3.posts.create(
  title: "Bukowski's Literary Impact: A Voice for the Outsiders",
  text: "Charles Bukowski's writings resonated deeply with those who felt like outsiders or misfits. 
  He became a voice for the marginalized and disenfranchised, creating a sense of camaraderie and understanding through his works. 
  His legacy as a writer who championed the 'underdog' endures."
)
user3.posts.create(
  title: "Bukowski's Legacy: A Literary Rebel's Enduring Influence",
  text: "Charles Bukowski's literary rebellion against societal norms and his unfiltered portrayal of life continue to inspire writers and readers alike. 
  His legacy as a poet, novelist, and short story writer remains a testament to the enduring power of honest and unapologetic storytelling."
)

user4 = User.find_by(email: "mayan@example.com")
user4.posts.create(
  title: "A Remarkable Childhood: Maya Angelou's Early Years",
  text: "Maya Angelou's tumultuous early life included a period of silence after a traumatic incident. 
  During this time, she discovered her love for literature and poetry, laying the foundation for her remarkable career as a poet."
)
user4.posts.create(
  title: "A Pioneering Autobiography: 'I Know Why the Caged Bird Sings",
  text: "Maya Angelou's first autobiographical work, 'I Know Why the Caged Bird Sings,' is a groundbreaking literary achievement. 
  It courageously explores themes of race, identity, and self-discovery, making it a cornerstone of American literature."
)
user4.posts.create(
  title: "Civil Rights Activism: Maya Angelou's Voice for Equality",
  text: " Maya Angelou was a prominent civil rights activist who worked alongside luminaries like Martin Luther King Jr. 
  Her poetry and writings often carried a strong message of racial equality and social justice, earning her a place in history as both an artist and an advocate."
)
user4.posts.create(
  title: "Presidential Poet: Maya Angelou's Inaugural Performances",
  text: "Maya Angelou made history by becoming the first African American woman to recite a poem at a presidential inauguration. 
  Her recitations at the inaugurations of Presidents Bill Clinton in 1993 and Barack Obama in 2009 were powerful expressions of hope and unity."
)
user4.posts.create(
  title: "A Literary Legacy: Maya Angelou's Impact on Poetry",
  text: "Maya Angelou's poetry, characterized by its emotional depth and powerful storytelling, continues to inspire and resonate with readers worldwide. Her works are a testament to the enduring power of words and their ability to connect people through shared experiences and emotions."
)
user4.posts.create(
  title: "Beyond Words: Maya Angelou's Life of Resilience and Inspiration",
  text: "Maya Angelou's life journey was as remarkable as her literary legacy. She overcame adversity, including a traumatic childhood and racial discrimination, to become an iconic writer, poet, and civil rights activist. 
  Her story serves as an enduring source of inspiration, reminding us of the strength of the human spirit and the power of resilience."
)

user5 = User.find_by(email: "jobs@example.com")
user5.posts.create(
  title: "Co-Founder of Apple Inc.",
  text: "Steve Jobs, along with Steve Wozniak and Ronald Wayne, co-founded Apple Computer, Inc. (now Apple Inc.) in 1976. 
  This innovative company would go on to revolutionize the personal computer, smartphone, and consumer electronics industries, leaving an indelible mark on modern technology."
)
user5.posts.create(
  title: "The iPhone Revolution",
  text: "Steve Jobs played a pivotal role in the development of the iPhone, which was introduced in 2007. 
  This iconic device not only redefined the smartphone market but also transformed the way people communicate, work, and interact with technology, making it an integral part of our daily lives."
)
user5.posts.create(
  title: "Pixar Animation Studios",
  text: "Jobs purchased the Computer Graphics Division of Lucasfilm in 1986 and rebranded it as Pixar Animation Studios. 
  Under his leadership, Pixar produced groundbreaking films like Toy Story and Finding Nemo, becoming a powerhouse in the animation industry before its acquisition by Disney in 2006."
)
user5.posts.create(
  title: "Inspirational Commencement Speeches",
  text: "Steve Jobs delivered memorable commencement speeches at Stanford University (2005) and Harvard University (2007). 
  These speeches, in which he shared his life experiences and emphasized the importance of following one's passion, continue to inspire individuals worldwide."
)
user5.posts.create(
  title: "Innovative Design and User Experience",
  text: " Steve Jobs was known for his obsession with design and user experience. 
  He led the development of iconic products like the Macintosh, iPod, and iPad, ensuring they were not only functional but also aesthetically pleasing. 
  His commitment to elegant design and simplicity left a lasting influence on the tech industry."
)
user5.posts.create(
  title: "Think Different: Steve Jobs' Approach to Innovation",
  text: "Steve Jobs was a pioneer in the tech industry, known for his 'Think Different' philosophy. 
  He believed in challenging the status quo and pushing the boundaries of what technology could achieve. This approach led to groundbreaking products like the iPhone and changed the way we interact with technology."
)
user5.posts.create(
  title: "The Power of Storytelling: Steve Jobs' Keynotes",
  text: "Steve Jobs was a masterful storyteller. His product keynotes were legendary, captivating audiences worldwide. 
  He used these events not only to introduce new products but also to share his vision, passion, and the 'one more thing' surprises that kept us all eagerly anticipating what Apple would unveil next."
)
user5.posts.create(
  title: "Legacy of Innovation: Apple's Ongoing Impact",
  text: "Steve Jobs' legacy lives on in Apple's commitment to innovation. 
  His influence can be seen in the company's dedication to creating groundbreaking products that seamlessly blend technology and art. 
  Apple's success and impact on the world are a testament to Jobs' visionary leadership."
)

user6 = User.find_by(email: "odhiambo@example.com")
user6.posts.create(
  title: "Thomas Mboya: A Visionary Kenyan Leader",
  text: "Thomas Joseph Mboya, born in 1930, was a prominent Kenyan politician and labor leader. 
  He played a pivotal role in Kenya's struggle for independence and later in its early post-independence period, advocating for progressive policies and social reforms."
)
user6.posts.create(
  title: "Education Advocate: Mboya's Role in the Airlift Africa Program",
  text: "Thomas Mboya spearheaded the Airlift Africa program in the late 1950s and early 1960s. 
  This initiative helped send promising Kenyan students, including Barack Obama Sr., to the United States for higher education, ultimately contributing to Kenya's intellectual and leadership development."
)
user6.posts.create(
  title: "Trade Union Pioneer: Mboya and the Labor Movement",
  text: "Thomas Mboya was a key figure in the Kenyan labor movement. 
  He co-founded and led the Nairobi City Council Workers' Union, working to improve workers' conditions and wages while fostering a sense of unity among Kenyan laborers."
)
user6.posts.create(
  title: "Contributions to Kenyan Independence: Mboya's Political Career",
  text: "Mboya was instrumental in the political struggle for Kenyan independence from British colonial rule. 
  He was a co-founder of the Kenya African National Union (KANU) and served as a member of Kenya's first post-independence cabinet, making significant contributions to the nation's early governance."
)
user6.posts.create(
  title: "Tragic Assassination: Thomas Mboya's Untimely Death",
  text: "In 1969, Thomas Mboya was tragically assassinated in Nairobi, Kenya. 
  His murder was a significant loss to Kenya, as he was a charismatic and influential leader dedicated to the betterment of his nation. 
  His legacy lives on through his contributions to education and the labor movement, as well as his role in Kenya's history."
)

# Comments
post_user1 = user1.posts.first
post_user1.comments.create(
  text: "Love it!",
  author: user2
)
post_user1.comments.create(
  text: "Wooow",
  author: user3
)

post_user2 = user2.posts.first
post_user2.comments.create(
  text: "Thanks for this.",
  author: user3
)
post_user2.comments.create(
  text: "Informative",
  author: user4
)

post_user3 = user3.posts.first
post_user3.comments.create(
  text: "Happy to know",
  author: user4
)
post_user3.comments.create(
  text: "I admire",
  author: user5
)

post_user4 = user4.posts.first
post_user4.comments.create(
  text: "Thanks for this.",
  author: user5
)
post_user4.comments.create(
  text: "Nice",
  author: user6
)

post_user5 = user5.posts.first
post_user5.comments.create(
  text: "Good",
  author: user6
)
post_user5.comments.create(
  text: "Lol",
  author: user1
)

post_user6 = user6.posts.first
post_user6.comments.create(
  text: "Great leader",
  author: user1
)
post_user6.comments.create(
  text: "I love him",
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

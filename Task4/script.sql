USE [master]
GO
/****** Object:  Database [Task4DB]    Script Date: 9/11/2020 4:44:03 PM ******/
CREATE DATABASE [Task4DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task4DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Task4DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task4DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Task4DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task4DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task4DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task4DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task4DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task4DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task4DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task4DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task4DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task4DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task4DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task4DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task4DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task4DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task4DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task4DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task4DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task4DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task4DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task4DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task4DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task4DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task4DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task4DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task4DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task4DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Task4DB] SET  MULTI_USER 
GO
ALTER DATABASE [Task4DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task4DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task4DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task4DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task4DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Task4DB] SET QUERY_STORE = OFF
GO
USE [Task4DB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/11/2020 4:44:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NULL,
	[fullname] [nvarchar](100) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 9/11/2020 4:44:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[summary] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[username] [nvarchar](100) NULL,
	[timepost] [date] NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'admin', N'admin', N'Nguyen Tien Dat', N'admin')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'baconsau', N'baconsau', N'BUI TIEN DAT', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'black', N'123', N'Nguyen Manh Toan', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'Emma Victoria', N'123', N'Nguyen Trung Hieu', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'hana', N'123', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'honghong', N'honghong', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'huongfu', N'huongfu', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'huongfug', N'huongfug', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'nhumong', N'nhumong', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'nhungfa', N'nhungfa', N'Vu Thi Huong', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'tiendat', N'tiendat', N'Bui Tien Dat', N'user')
INSERT [dbo].[Account] ([username], [password], [fullname], [role]) VALUES (N'white', N'123', N'Pham Nhat Vuong', N'user')
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (21, N'aaaaa', N'aagghjhaaa', N'aaaaa', N'Emma Victoria', CAST(N'2020-09-11' AS Date), N'drags')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (22, N'10 tricky words in English & how to stop misspelling them', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'1. Necessary
What a pain! Is this devil of a word spelled with two “c’s”, two “s’s” or something in between? Resolve the conundrum by imagining yourself trying to put on a shirt with one sleeve. It isn’t easy, is it? Of course not – because it’s necessary for a shirt to have onecollar (the c!) and twosleeves (the s’s!).

2. Stationary vs. Stationery
These two words have completely different meanings: “Stationary” means not moving, whereas “stationery” refers to office supplies like pencils, erasers, paper, and envelopes. But how can you remember which one’s which? Take –ERY, the last part of “stationery”, as your clue: Now remember that the “e” is for erasers and envelopes – two very common pieces of stationery!

3. Separate
When we pronounce this word, it sounds like “seperate”. However, spelling it this way is wrong, wrong, wrong! Now, to never make that mistake again, think of a large, hairy rat. That’s an image that won’t get out of your head for some time! Just remember: there’s a rat in “separate”.

4. Affect vs. Effect
These homophones – words that sound alike but have different spellings and/or meanings – wreak havoc in essays across the globe! How do you remember which one to use? Look to the first letter of each word as your guide. “Affect” begins in “a” and refers to an action, while “effect” begins in “e” and refers to an end consequence.

5. Embarrassed
Embarrassed by not being able to spell this word? You’re not the only one! This is another case of double letters causing problems. This time, we need to remember the double “r” and “s”. To jog your memory, imagine a little boy who’s embarrassed by his sister’s terrible singing and think: “He goes really red when his sister sings.”', N'hana', CAST(N'2020-09-09' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (23, N'9 reasons why English rules', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'1. It’s the most commonly spoken language in the world
Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with.

2. It’s the language of international business
With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you?

3. Most movies are in English
Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended.

4. It’s easy to learn
This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me…

5. It’s related to loads of other languages
English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.', N'hana', CAST(N'2020-09-09' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (24, N'A beginner’s guide to British humor', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'Laugh at yourself
The key to understanding British humor is knowing not to take yourself too seriously. Our default humor is to highlight our own flaws. We make light of our failures so as to appear more humble, approachable and relatable. There is no room for egos in British humor. Awkward encounters, clumsiness and embarrassing moments are all well-established self-deprecation material.

Examples: “I’m really not very good at self-deprecation comedy.” “I look like I got dressed in the dark this morning!” “I’m so bad at cooking- I could burn water.” “I couldn’t run a bath, let alone this race. I make snails look speedy.”

Comedians to look out for: Jon Richardson, Richard Ayoade, Jack Whitehall and Sarah Millican

TV shows to check out: Would I Lie to You?

Wait, were they joking?
Combine self-deprecation with a dose of understated sarcasm and you have the key ingredients of British humor. Sarcasm and irony are ingrained in our DNA. They are produced with world-class timing and nearly always with a deadpan delivery that will leave you wondering as to whether it was indeed a joke (or not?)

Sarcasm can be hard to spot in a new language and a new culture, and in Britain the usual clues of hyperbole (exaggeration) and an overemphasis on adjectives are stressed even less, making it harder to pick up. Luckily, sarcasm is used so often in day-to-day life that you will soon be a natural at detecting it. Be sure to use the tone, context and non-verbal clues such as the proud smile that spreads across the speakers face (Brits struggle to hide their delight at a perfectly timed sarcastic comment) as a guide.

Examples: “Oh, so you do know how to answer your phone?” “I absolutely love it when my train is delayed.” “I really like how loud you play your music.”

Comedians to look out for: Jack Dee, David Mitchell and Stewart Lee

TV shows to check out: The Thick of It, The IT Crowd, The Office

Don’t take what we say seriously
Brits are famous for being very, very polite, but a surefire sign that a Brit likes you is if they happily ‘offend’ you with the occasional witty, tongue-in-cheek comment. These are not mean-spirited statements, but rather a playful exchange of verbal sparring delivered with a smiling face and no apology. It can be used to make light of differences with new friends in an attempt to spark conversation.

A vital aspect of mastering British humor is judging what the people you are with find funny. A tongue-in-cheek comment is not always appropriate. It’s all about honing your humor to suit the occasion and place.

Examples: “How have you never seen Frozen?! What’s wrong with you?!” “I can’t be friends with someone who doesn’t drink tea!” “I can’t be seen in public with a Manchester United supporter!”

Comedians to look out for: Ricky Gervais, Lee Nelson and Simon Amstell', N'hana', CAST(N'2020-09-09' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (25, N'10 things we bet you didn’t know about New Zealand', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'1. It’s the “Land of the long white cloud”
The Māori name for New Zealand – Aoetaroa – means ‘land of the long white cloud’. There are various explanations for this name, most rooted in traditional Maori stories, but all somehow linked to the idea that the horizon in New Zealand is often covered in long, white clouds. They country’s also the shape of a long cloud when seen from space (but maybe that’s just a coincidence).

2. There are way more sheep than people
New Zealand’s a sparsely populated country. Geographically it’s close in size to the UK, but its population is only 4.47 million (compared to the UK’s 64 million). And what’s more – sheep far outnumber people: There are about six sheep for every human in New Zealand; it’s one of the highest ratios in the world.

3. Beaches are never far away
Beaches in New Zealand are never more than a quick daytrip away – in fact, no part of the country is more than 128km away from the ocean – so you could easily ski AND surf in one day.

4. It was the last frontier for humans
Humans – Homo sapiens, to be exact – started off in Africa, moved on to Europe and Asia, North America, Australia and finally New Zealand, only landing there approximately 800 years ago – that’s tens of thousands of years later than most regions of the world. Gives a whole new meaning to remote, doesn’t it?

5. It used to be home to a monstrously big bird
If you like your birds big, New Zealand’s your spot. Although extinct, giant Moa birds were native to New Zealand – they were 3.6 meters tall and weighed a whopping 230kg.', N'hana', CAST(N'2020-09-09' AS Date), N'draft')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (26, N'Gap Year Guide to Australia and New Zealand', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'Working: what’s available?
What’s the most logical way to fund your time overseas? Working, of course. Gap year travelers typically find work serving in restaurants, making coffee, or become employed as promoters at special events, in retail and, of course, as fruit pickers and packers. For jobs in hospitality or customer service, you’ll need to show your ability to work in English, whereas less customer-focussed work (such as fruit picking or cleaning) won’t necessarily require a high level. Newly arrived? Many hostels will help find you work or will employ guests themselves (in reception or as cleaners) while they find their feet. To snag a job, hit the streets with a well-written CV or have an agency set you up with work.

Working: what’s needed for a visa?
Temporary working visas and reciprocal agreements are available to citizens of Taiwan, Japan, Hong Kong, the UK and many European countries, allowing them to work for 12 months in Australia. The “Working Holiday Maker Programme” offers the Working Holiday and Work and Holiday visas (find out more at the Australian Immigration’s website), offered to young people (18-30 years old) wishing to supplement their Australian travels by working. Travelers must hold return tickets and show proof of funds for their trip (around AU$5,000 is recommended).

Travelers interested in exploring New Zealand should click through NZ’s Immigration website to find their best visa fit.

Volunteering: best resources
Saved up and plan on skipping employed life altogether? Consider volunteering: there are plenty of ways to volunteer your time to an excellent cause. Check out listed opportunities at charities on sites such as Volunteering Australia.org, GoVolunteer.com.au and Volunteering NZ, find reviews of existing volunteer programs on GoOverseas.com or head to interest-specific sites such as Conservation Volunteers Australia or UNICEF NZ.

On the other hand, networks like WWOOF and HelpX allow travelers to “work for their keep” on farms, B&Bs and lodges (among other hosts), offering a cheap and rewarding way to get to know the country.

Studying: taking an English course
While you likely had to prove a working knowledge of English before applying for your Tourist, Student or Working Holiday visa, you’ll probably want to dive deep into your studies once you land. Working with real live locals in a café, office or in a shop will boost your level to no end, but if you’re keen to follow a more studious route, taking a longer English course is a great way to progress academically and meet other travelers.

But in a big country like Oz, where should you study? In Australia, bright-lights Sydney and sunny Brisbane are top choices for language students, with both cities sporting lively international communities, postcard-worthy beaches and quality language schools. In New Zealand, head to charming Auckland.', N'white', CAST(N'2020-09-09' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (27, N'10 reasons to love Eastbourne', N'Go anywhere in the world and you’ll find someone who speaks <u>English</u>. But when and why did English become the de facto tongue for communities as far apart as the UK and French Polynesia? Let’s find out.<br>
                1. It’s the most commonly spoken language in the world Depending a bit on how you count, in addition to the approximately 400 million native speakers, English is understood and/or spoken by around 1.6 billion people. With over a quarter of the world speaking the language, there’s always someone to practice with. <br>
                2. It’s the language of international business With world business headquarters predominantly in the financial hubs of the UK and USA, English has long been the default language of trade. It might also be, in part, due to English-speakers not being the first to want to learn another language, and well, you have to find common ground with people from all over the world somehow, don’t you? <br>
                3. Most movies are in English Hollywood is a powerhouse of global entertainment, so it’s natural that English would become the main language for movie-making. Sure, the movies are often dubbed over – but they’re really best enjoyed in the language in which they were intended. 
                4. It’s easy to learn This is debatable depending on who you speak to, but it’s generally accepted that English isn’t the most taxing language to get to grips with. The vocabulary is simple to grasp and its relation to lots of other languages means speakers of those languages can see where concepts in English originated from. Which reminds me… <br>
                5. It’s related to loads of other languages English has a long and fascinating history that spans wars, invasions and influences from around the globe. Cultures that have helped shape modern English include Romans, Vikings and the French. For this reason it’s a hybrid language comprised of Latin, Germanic and Romance elements.<br>', N'1. It’s sunny
Yep, you read that right: Eastbourne is sunny; one of the sunniest spots in the UK, in fact. Boasting a prime location on the south coast of England, the summers average a cosy 18-21ºC (that’s pretty balmy by UK standards!).

2. It’s a great place to study English
What better place to learn English, than a traditional English town? Mingling with the friendly, chatty locals of Eastbourne, you’ll find yourself picking up the language in no time. Plus, learning English surrounded by the classic ‘Queen’s English’ accent found across the south coast will help you pronounce your new vocabulary clearly and correctly.

3. It’s home to some iconic natural scenery
The endless pebble beaches offer a perfect place for a long, lazy walk on the weekend, or to enjoy a little break from your studies, breathing in some fresh sea air. The stunning coast is also overlooked by magnificent, towering white chalk cliffs. These are Eastbourne’s most iconic landmarks and the view of the red and white-striped Beachy Head Lighthouse protecting ships from sailing too close is one of the south coast’s most photographed views.

4. You can eat ice cream on the pier
Still standing over 150 years since it was built, the classic Victorian pier is a regular film location and an idyllic spot for a delicious, locally-sourced ice cream. With seagulls swooping overhead and the smell of fish and chips gently wafting past, you couldn’t get more English unless you were having cream tea with the Queen.

5. It’s a historic city with oodles of charm
Whether you’re standing at the edge of the iconic wooden pier, wandering along the seafront lined with grand historic hotels, or exploring the suburbs filled with rows of terraced Victorian houses, there’s no denying that Eastbourne is both a pretty and historic place to live. Further afield, the surrounding countryside is dotted with tiny, quaint villages and traditional old red brick houses – perfect for a quick escape from city life. Plus, not far from the city, history buffs can step back in time at medieval Pevensey Castle or Herstmonceux Castle.', N'white', CAST(N'2020-09-08' AS Date), N'published ')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (28, N'Solving the logout problem properly and elegantly', N'The English idiom tongue-tied describes someone who is speechless. Originally coined by Shakespeare, the expression is still commonly used today. There are many reasons that people sometimes feel tongue-tied, and being a native English speaker or an English student has nothing to do with it. Embarrassment, nervousness, surprise, or just plain old shyness are some of the psychological causes for feeling tongue-tied.', N'<p>A&nbsp;much&nbsp;lesser-known&nbsp;meaning&nbsp;of&nbsp;tongue-tied&nbsp;describes&nbsp;a&nbsp;physical&nbsp;condition.&nbsp;People&nbsp;who&nbsp;are&nbsp;physically&nbsp;tongue-tied&nbsp;have&nbsp;a&nbsp;tongue&nbsp;that&nbsp;is&nbsp;more&nbsp;closely&nbsp;connected&nbsp;to&nbsp;the&nbsp;floor&nbsp;of&nbsp;the&nbsp;mouth&nbsp;than&nbsp;normal.&nbsp;In&nbsp;very&nbsp;rare&nbsp;cases,&nbsp;this&nbsp;can&nbsp;cause&nbsp;problems&nbsp;including&nbsp;speech&nbsp;impediments&nbsp;that&nbsp;require&nbsp;surgery&nbsp;to&nbsp;correct.</p>

<p>So,&nbsp;do&nbsp;you&nbsp;need&nbsp;to&nbsp;see&nbsp;a&nbsp;doctor&nbsp;to&nbsp;speak&nbsp;better&nbsp;English?&nbsp;A&nbsp;small&nbsp;group&nbsp;of&nbsp;people&nbsp;in&nbsp;Korea&nbsp;think&nbsp;so.&nbsp;They&nbsp;believe&nbsp;that&nbsp;Korean&nbsp;children&nbsp;have&nbsp;naturally&nbsp;shorter&nbsp;tongues&nbsp;than&nbsp;Americans,&nbsp;which&nbsp;stops&nbsp;them&nbsp;from&nbsp;correctly&nbsp;pronouncing&nbsp;English&nbsp;sounds.&nbsp;Some&nbsp;parents&nbsp;are&nbsp;so&nbsp;worried&nbsp;that&nbsp;their&nbsp;children&nbsp;won&rsquo;t&nbsp;speak&nbsp;correct&nbsp;English&nbsp;that&nbsp;they&nbsp;bring&nbsp;them&nbsp;to&nbsp;the&nbsp;doctor&nbsp;to&nbsp;get&nbsp;an&nbsp;operation&nbsp;on&nbsp;their&nbsp;tongue.&nbsp;These&nbsp;operations&nbsp;are&nbsp;called&nbsp;frenectomies.&nbsp;During&nbsp;frenectomies,&nbsp;the&nbsp;doctors&nbsp;cut&nbsp;the&nbsp;tissue&nbsp;under&nbsp;the&nbsp;tongue.&nbsp;This&nbsp;is&nbsp;supposed&nbsp;to&nbsp;make&nbsp;the&nbsp;tongue&nbsp;more&nbsp;flexible&nbsp;and&nbsp;better&nbsp;able&nbsp;to&nbsp;pronounce&nbsp;English&nbsp;sounds.</p>
', N'tiendat', CAST(N'2020-09-10' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (29, N'A LANGUAGE DIES EVERY TWO WEEKS BUT NOT THIS ONE', N'When Manuel Segovia and Isidro Velazquez had a falling out, it became international news. No one remembers what started it. Some say it was because they disagreed on the proper way to speak their own language. Their feud was widely reported around the world because there was much more than their friendship at stake.', N'<p><span style="font-size:16px"><span style="font-family:Comic Sans MS,cursive">They&nbsp;were&nbsp;the&nbsp;last&nbsp;two&nbsp;speakers&nbsp;of&nbsp;a&nbsp;600-year-old&nbsp;language&nbsp;called&nbsp;Ayapaneco.&nbsp;If&nbsp;their&nbsp;friendship&nbsp;could&nbsp;not&nbsp;be&nbsp;saved,&nbsp;the&nbsp;language&nbsp;would&nbsp;die.</span></span></p>

<p><span style="font-size:16px"><span style="font-family:Comic Sans MS,cursive">In&nbsp;2014,&nbsp;telecommunications&nbsp;giant&nbsp;Vodafone&nbsp;<strong>stepped</strong><strong>&nbsp;in</strong>&nbsp;to&nbsp;<strong>save</strong><strong>&nbsp;the&nbsp;day</strong>.&nbsp;Together&nbsp;with&nbsp;the&nbsp;local&nbsp;community,&nbsp;they&nbsp;built&nbsp;a&nbsp;school&nbsp;to&nbsp;teach&nbsp;the&nbsp;language.&nbsp;And&nbsp;as&nbsp;<strong>the</strong><strong>&nbsp; cherry&nbsp;on&nbsp;top</strong>,&nbsp;the&nbsp;two&nbsp;old&nbsp;friends&nbsp;were&nbsp;brought&nbsp;together&nbsp;to&nbsp;<strong>bury</strong><strong>&nbsp;the&nbsp;hatchet</strong>.&nbsp;The&nbsp;men&nbsp;hugged,&nbsp;cried,&nbsp;and&nbsp;of&nbsp;course,&nbsp;they&nbsp;talked.&nbsp;They&nbsp;spoke&nbsp;in&nbsp;a&nbsp;language&nbsp;that&nbsp;would&nbsp;not&nbsp; die&nbsp;that&nbsp;day.&nbsp;The&nbsp;Vodafone&nbsp;video&nbsp;documentary&nbsp;that&nbsp;was&nbsp;made&nbsp;ends&nbsp;with&nbsp;the&nbsp;two&nbsp;men&nbsp;teaching&nbsp;young&nbsp;children&nbsp; their&nbsp;language.</span></span></p>

<p><span style="font-size:16px"><span style="font-family:Comic Sans MS,cursive">The&nbsp;only&nbsp;problem&nbsp;with&nbsp;this&nbsp;<strong>heartwarming</strong>&nbsp;story&nbsp;was&nbsp;that&nbsp;it&nbsp;was&nbsp;a&nbsp;lie.&nbsp;It&nbsp;was&nbsp;an&nbsp;advertising&nbsp;scheme&nbsp;<strong>dreamed</strong><strong>&nbsp;up</strong>&nbsp;by&nbsp;Vodafone&rsquo;s&nbsp;marketing&nbsp;department&nbsp;to&nbsp;tug&nbsp;on&nbsp;<strong>people&rsquo;s</strong><strong>&nbsp; heartstrings</strong>.&nbsp;And&nbsp;it&nbsp;worked.&nbsp;It&nbsp;fooled&nbsp;news&nbsp;media&nbsp; around&nbsp;the&nbsp;world,&nbsp;including&nbsp;the&nbsp;BBC,&nbsp;NPR,&nbsp;and&nbsp;the&nbsp;Guardian.</span></span></p>
', N'tiendat', CAST(N'2020-09-11' AS Date), N'published')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (30, N'I AM THE RIVER AND THE RIVER IS ME', N'The Maori people wept with joy. They celebrated their beloved river being granted the same rights as a human being by the New Zealand government. This means the river now has a legal right to exist. Defenders of the river can now use the courts to sue anyone who seeks to harm it.', N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">It&nbsp;was&nbsp;one&nbsp;of&nbsp;New&nbsp;Zealand&rsquo;s&nbsp;longest&nbsp;running&nbsp;court&nbsp;cases,&nbsp;lasting&nbsp;140&nbsp;years.&nbsp;</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">It&nbsp;ended&nbsp;on&nbsp;<strong>March&nbsp;17th,&nbsp;2017</strong>&nbsp;with&nbsp;the&nbsp;government&nbsp;finally&nbsp;recognizing&nbsp;the&nbsp;Te&nbsp;Awa&nbsp;Tupua&nbsp;river&nbsp;as&nbsp;being&nbsp;its&nbsp;own&nbsp;owner.</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">From&nbsp;<strong>time</strong><strong>&nbsp;immemorial</strong>,&nbsp;the&nbsp;Maori&nbsp;people&nbsp;have&nbsp;viewed&nbsp;this&nbsp;river&nbsp;as&nbsp;a&nbsp;living&nbsp;being.&nbsp;</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">They&nbsp;relate&nbsp;to&nbsp;the&nbsp;river&nbsp;as&nbsp;kin&nbsp;and&nbsp;depend&nbsp;on&nbsp;the&nbsp;river&nbsp;for&nbsp;survival.</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">&nbsp;The&nbsp;Te&nbsp;Awa&nbsp;Tupua&nbsp;river&nbsp;also&nbsp;has&nbsp;great&nbsp;spiritual&nbsp;significance&nbsp;to&nbsp;them.&nbsp; They&nbsp;say,&nbsp;&ldquo;I&nbsp;am&nbsp;the&nbsp;river&nbsp;and&nbsp;the&nbsp;river&nbsp;is&nbsp;me.&rdquo;&nbsp;</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">They&nbsp;believe&nbsp;the&nbsp;wellbeing&nbsp;of&nbsp;the&nbsp;river&nbsp;and&nbsp;their&nbsp;own&nbsp;wellbeing&nbsp;are&nbsp;<strong>one</strong><strong>&nbsp;and&nbsp;the&nbsp;same</strong>.</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">The&nbsp;legal&nbsp;rights&nbsp;of&nbsp;nature&nbsp;have&nbsp;also&nbsp;been&nbsp;granted&nbsp;to&nbsp;New&nbsp;Zealand&nbsp;forests&nbsp;and&nbsp;mountains&nbsp;in&nbsp;recent&nbsp;years.</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">While&nbsp;equating&nbsp;nature&nbsp;with&nbsp;some&nbsp;of&nbsp;the&nbsp;rights&nbsp;of&nbsp;humans&nbsp;may&nbsp;sound&nbsp;<strong>a</strong><strong>&nbsp;bit&nbsp;odd</strong>,&nbsp;many&nbsp;countries&nbsp;have&nbsp;been&nbsp;granting&nbsp;legal&nbsp;rights&nbsp;of&nbsp;personhood&nbsp;to&nbsp;corporations.&nbsp;</span></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><span style="font-size:16px">If&nbsp;we&nbsp;can&nbsp;recognize&nbsp;businesses&nbsp;as&nbsp;people,&nbsp;perhaps&nbsp;it&nbsp;is&nbsp;<strong>high&nbsp;&nbsp;</strong><strong>&nbsp; time</strong>&nbsp;that&nbsp;we&nbsp;show&nbsp;the&nbsp;same&nbsp;respect&nbsp;to&nbsp;the&nbsp;environment.</span></span></p>
', N'tiendat', CAST(N'2020-09-11' AS Date), N'drags')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (31, N'Solving the logout problem properly and elegantly', N'The English idiom tongue-tied describes someone who is speechless. Originally coined by Shakespeare, the expression is still commonly used today. There are many reasons that people sometimes feel tongue-tied, and being a native English speaker or an English student has nothing to do with it. Embarrassment, nervousness, surprise, or just plain old shyness are some of the psychological causes for feeling tongue-tied.', N'<p>A&nbsp;much&nbsp;lesser-known&nbsp;meaning&nbsp;of&nbsp;tongue-tied&nbsp;describes&nbsp;a&nbsp;physical&nbsp;condition.&nbsp;People&nbsp;who&nbsp;are&nbsp;physically&nbsp;tongue-tied&nbsp;have&nbsp;a&nbsp;tongue&nbsp;that&nbsp;is&nbsp;more&nbsp;closely&nbsp;connected&nbsp;to&nbsp;the&nbsp;floor&nbsp;of&nbsp;the&nbsp;mouth&nbsp;than&nbsp;normal.&nbsp;In&nbsp;very&nbsp;rare&nbsp;cases,&nbsp;this&nbsp;can&nbsp;cause&nbsp;problems&nbsp;including&nbsp;speech&nbsp;impediments&nbsp;that&nbsp;require&nbsp;surgery&nbsp;to&nbsp;correct.</p>

<p>So,&nbsp;do&nbsp;you&nbsp;need&nbsp;to&nbsp;see&nbsp;a&nbsp;doctor&nbsp;to&nbsp;speak&nbsp;better&nbsp;English?&nbsp;A&nbsp;small&nbsp;group&nbsp;of&nbsp;people&nbsp;in&nbsp;Korea&nbsp;think&nbsp;so.&nbsp;They&nbsp;believe&nbsp;that&nbsp;Korean&nbsp;children&nbsp;have&nbsp;naturally&nbsp;shorter&nbsp;tongues&nbsp;than&nbsp;Americans,&nbsp;which&nbsp;stops&nbsp;them&nbsp;from&nbsp;correctly&nbsp;pronouncing&nbsp;English&nbsp;sounds.&nbsp;Some&nbsp;parents&nbsp;are&nbsp;so&nbsp;worried&nbsp;that&nbsp;their&nbsp;children&nbsp;won&rsquo;t&nbsp;speak&nbsp;correct&nbsp;English&nbsp;that&nbsp;they&nbsp;bring&nbsp;them&nbsp;to&nbsp;the&nbsp;doctor&nbsp;to&nbsp;get&nbsp;an&nbsp;operation&nbsp;on&nbsp;their&nbsp;tongue.&nbsp;These&nbsp;operations&nbsp;are&nbsp;called&nbsp;frenectomies.&nbsp;During&nbsp;frenectomies,&nbsp;the&nbsp;doctors&nbsp;cut&nbsp;the&nbsp;tissue&nbsp;under&nbsp;the&nbsp;tongue.&nbsp;This&nbsp;is&nbsp;supposed&nbsp;to&nbsp;make&nbsp;the&nbsp;tongue&nbsp;more&nbsp;flexible&nbsp;and&nbsp;better&nbsp;able&nbsp;to&nbsp;pronounce&nbsp;English&nbsp;sounds.</p>
', N'tiendat', CAST(N'2020-09-11' AS Date), N'drags')
INSERT [dbo].[Posts] ([id], [title], [summary], [description], [username], [timepost], [status]) VALUES (32, N'FLIGHTS TO NOWHERE IN THE AGE OF COVID-19', N'International tourism analysts say that 2020 will be a lost year. With a projected $2.2 trillion lost and 100 million jobs wiped out, many hotels, airlines, and restaurants are in survival mode. Tourism-related businesses are trying to stay afloat and weather the storm, hoping for a vaccine to turn things around in 2021.', N'<p>So,&nbsp;do&nbsp;you&nbsp;need&nbsp;to&nbsp;see&nbsp;a&nbsp;doctor&nbsp;to&nbsp;speak&nbsp;better&nbsp;English?&nbsp;A&nbsp;small&nbsp;group&nbsp;of&nbsp;people&nbsp;in&nbsp;Korea&nbsp;think&nbsp;so.&nbsp;</p>

<p>They&nbsp;believe&nbsp;that&nbsp;<strong>Korean&nbsp;</strong>children&nbsp;have&nbsp;naturally&nbsp;shorter&nbsp;tongues&nbsp;than&nbsp;Americans,&nbsp;which&nbsp;stops&nbsp;them&nbsp;from&nbsp;correctly&nbsp;pronouncing&nbsp;English&nbsp;sounds.</p>

<p>&nbsp;Some&nbsp;parents&nbsp;are&nbsp;so&nbsp;worried&nbsp;that&nbsp;their&nbsp;children&nbsp;won&rsquo;t&nbsp;speak&nbsp;correct&nbsp;<strong>English&nbsp;</strong>that&nbsp;they&nbsp;bring&nbsp;them&nbsp;to&nbsp;the&nbsp;doctor&nbsp;to&nbsp;get&nbsp;an&nbsp;operation&nbsp;on&nbsp;their&nbsp;tongue.&nbsp;</p>

<p>These&nbsp;operations&nbsp;are&nbsp;called&nbsp;frenectomies.&nbsp;During&nbsp;frenectomies,&nbsp;the&nbsp;doctors&nbsp;cut&nbsp;the&nbsp;tissue&nbsp;under&nbsp;the&nbsp;tongue.</p>

<p>&nbsp;This&nbsp;is&nbsp;supposed&nbsp;to&nbsp;make&nbsp;the&nbsp;tongue&nbsp;more&nbsp;flexible&nbsp;and&nbsp;better&nbsp;able&nbsp;to&nbsp;pronounce&nbsp;English&nbsp;sounds.</p>
', N'tiendat', CAST(N'2020-09-11' AS Date), N'drags')
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Post_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Post_Account]
GO
USE [master]
GO
ALTER DATABASE [Task4DB] SET  READ_WRITE 
GO

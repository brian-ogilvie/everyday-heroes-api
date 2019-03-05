# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Level.create({num: 1, required_points: 0, habit_points: 10})

HeroicHabit.create([
  {name: HeroicHabit.names[:power], intro_day: 3},
  {name: HeroicHabit.names[:balance], intro_day: 17, url: "https://youtu.be/jGX2AbZ3HQc"},
  {name: HeroicHabit.names[:focus], intro_day: 10},
  {name: HeroicHabit.names[:treasure], intro_day: 19},
  {name: HeroicHabit.names[:tribe], intro_day: 26},
])

DailyTask.create([
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Sweat Set", 
    description: "Complete one circuit of these five essential movenents: Squat, Push-up, Pull-up, Core Hold, and Inverted Press. Do the most challenging version of each, but only for as many repetitions as you can smoothly. Be kind to your body!" 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Green Smoothie", 
    description: "Maintain a baseline of daily nutrition with your favorite recipe. Just remember to include raw, orgainc greens!" 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Qi Gong Level 1", 
    description: "Give your energy body a daily tune up! Complete the warm-up and first three movements of this ancient and incredibly effective moving meditation practice." 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Hydration Calibration", 
    description: "Drink at least 8 x 8oz classes of clean, natural water every day. Build the habit of drinking only water when you are thirsty. Avoid soda, fruit juice and energy drinks; your body does not understand these things. If you drink alcohol, have an 8oz glass of water for each drink you have." 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Hero Pose", 
    description: "Practice your Hero Pose in the mirror for at least 2 minutes! Your posture communicates how you feel about yourself to the world and dictates how people react to you. Expansive postures lower stress hormones and support healthy organ function!" 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Purge Page", 
    description: "Complete one page of stream-of-consciousness journaling. Avoid the temptation to judge it in any way. Just write what ever comes out of your head." 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Affirmations Aloud", 
    description: "Speak, chant or sing your positive affirmations while looking yourself in the eye. Begin to reprogram those negative self-beliefs." 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Life Missions Level 1", 
    description: "Spend five minutes visualizing the heroic completion of your Life Missions as if they are already a reality. Practice \"emotionally remembering the future.\"" 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Holosync Meditation", 
    description: "Complete the 30 minute Dive. This powerful technology provides you the benefits of deep meditation automatically, every time."
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Inner Smile Meditation", 
    description: "Complete a 5 minute scan of your internal organs. Simply smiling while you turn your attention inward can dramatically effective your mood and stress hormone levels!" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Foolish Love", 
    description: "Do something today that will delight someone you love, especially if you find it embarrassing!" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Hearth Health", 
    description: "Spend at least 30 minutes on a household project that you've been putting off." 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Dark Scan", 
    description: "Take five minutes to imagine the consequences of not completing your Life Missions. Allow yourself to truly feel the regret and guilt of failing. Now, rejoice! You have time." 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Soul Embrace", 
    description: "Practice this technique with yourself or your significant other. (See instructions)" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Bless the Castle", 
    description: "Smudge your home with sage and/or palo santo. Experience the psychological benefits of simple rituals" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Life Missions Level 2", 
    description: "Examine your Life Missions. Determine what is the next step you can take toward accomplishing each. Choose the one Life Mission that is most important to you and define the next actionable goal. (i.e. Get In Great Shape: Do 10 Pull-Ups) Write the following on a piece of paper followed by your goal: \"I will use all of my powers to accomplish the following aim, ___________.\" Keep this piece of paper close and look at it every night right before you fall asleep and immediately after you wake." 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Idea Machine", 
    description: "Write down 10 ideas everyday--good, bad and meh. Build the habit of creative flow. Learn to not rely on fickle inspiration." 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Perfect Practice", 
    # description: "30 Minute Chunks of focused skill training using the \"Three P’s\" • Program (5-10 Min)- find a system, master or teacher from which to learn your new skill. • Prctice (10-20 Min)- repeat the smallest actions and fundamentals until you no longer need to reference the Program. • Play (5-10 Min)- perform the skill with out judging yourself! Learn to safely wield the new skill with ease and control." 
    description: "<p>30 Minute Chunks of focused skill training using the \"Three P’s\"</p><li>Program (5-10 Min) - find a system, master or teacher from which to learn your new skill.</li><li>Practice (10-20 Min) - repeat the smallest actions and fundamentals until you no longer need to reference the Program.</li><li>Play (5-10 Min) - perform the skill with out judging yourself! Learn to safely wield the new skill with ease and control.</li>" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Grease the Wheels", 
    description: "Keep a daily list of 10 Reasons you are Grateful. Gratitude is the easiest emotion to choose and is the key to releasing toxic energies." 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Tend the Roots", 
    description: "Check your finances and maintain their health. This one is a no-brainer but also a rabbit hole. Check the EDH database for sample budgets and advice." 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Volunteer Today", 
    description: "Search for volunteer opportunities near you and offer your time." 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Lean On Me", 
    description: "Make your needs known to your Tribe. Promise to be there for them in whatever ways you can." 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Response Ability", 
    description: "Ask yourself: What skills and abilities do you currently have that world needs? Find a new way to be of service to your fellow human beings." 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Share Your Wisdom", 
    description: "Upload a video or series of videos demonstrating something you’ve mastered or are working on. Teaching is one of the best ways to learn!" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Help a Stranger", 
    description: "See something, DO SOMETHING. If not now, when? If not you, who?" 
  },
])

Level0Point.create([
  {heroic_habit_id: 1, points: 330},
  {heroic_habit_id: 2, points: 190},
  {heroic_habit_id: 3, points: 260},
  {heroic_habit_id: 4, points: 170},
  {heroic_habit_id: 5, points: 50},
])

Challenge.create([
  {level_id: 1, intro_day: 1, category: Challenge.categories[:required], title: "Why?", description: "Welcome, hero! We are so excited that you have chosen to take this journey of self improvement with us. Your first assignment is simply to consider your \"Why.\" Your Why is at the center of everything you do. Maybe you want to be the best father you can be. Maybe you want to revolutionize the computer industry. Whatever it is, it will inform what you do. It will inform who you bring into your life. It will inform how you operate everyday. Until you define your Why, your choices seem random, and this is a source of confusion and wasted energy for so many people. So figure this out. Write it down. Why do you want to be a hero?", url: "https://www.youtube.com/watch?v=HblkRJxOMvQ&feature=share", embed_url: "https://www.youtube.com/embed/HblkRJxOMvQ"},
  {level_id: 1, intro_day: 5, category: Challenge.categories[:bonus], title: "Bonus 1"},
  {level_id: 1, intro_day: 12, category: Challenge.categories[:bonus], title: "Bonus 2", url: "https://www.youtube.com/watch?v=GAE00e7mnMI&feature=share", embed_url: "https://www.youtube.com/embed/GAE00e7mnMI"},
  {level_id: 1, intro_day: 24, category: Challenge.categories[:bonus], title: "Bonus 3"},
  {level_id: 1, intro_day: 31, category: Challenge.categories[:required], title: "Final Challenge", description: "Become an Everyday Hero!"},
])

ChallengePoint.create([
  {challenge_id: 2, heroic_habit_id: 1, points: 90},
  {challenge_id: 3, heroic_habit_id: 3, points: 70},
  {challenge_id: 4, heroic_habit_id: 2, points: 60},
  {challenge_id: 4, heroic_habit_id: 4, points: 60},
])

User.create([
  {created_at: 30.days.ago, first_name: 'Brian', last_name: 'Ogilvie', email: 'brian@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Gormal', level_id: 1},
  {created_at: 15.days.ago, first_name: 'Xander', last_name: 'Chauncey', email: 'xander@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Icaro', level_id: 1},
  {created_at: 2.days.ago, first_name: 'Dana', last_name: 'Ogilvie', email: 'dana@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Artemis', level_id: 1},
])

CompleteChallenge.create([
  {user_id: 1, challenge_id: 1},
])

def create_assignments
  users = User.all
  today = Date.today
  users.each do |user|
    days_active = user.days_active
    (1...days_active).each do | day |
      habits = HeroicHabit.where("intro_day <= #{day}")
      habits.each do | habit |
        complete = rand(3) == 1 ? false : true
        if complete
          created_at = (today - (30 - day)).to_s
          element_id = rand(5)
          task = DailyTask.where({heroic_habit_id: habit[:id], element: element_id}).first
          new_assignment = {user_id: user[:id], created_at: created_at, daily_task_id: task[:id]}
          assignment = Assignment.create(new_assignment)
        end
      end
    end
  end
end

create_assignments

Announcement.create([
  {
    title: "Welcome, Hero!", 
    content: "<p>By signing up, you have taken a very important step. You've said aloud that you want to change your life and become the hero that your family, your community, and even the world needs. Welcome!</p><h4>What's next?</h4><p>Over the next 30 days you'll be making gradual, actionable changes in your life by accomplishing small, simple tasks. Every day, check into your <strong>Today</strong> page to see what you need to do.</p><p>The program is divided into Daily Habits, which need to be done every day, and Challenges, which will only need to be done once over the course of the month. On Day 1, there is only your first monthly Challenge. Over the next few days, you'll be introduced to our Five Heroic Habits and begin to practice them daily.</p><p>Welcome, hero!</p>",
    url: nil,
    embed_url: "https://www.youtube.com/embed/HblkRJxOMvQ",
  },
])

def create_announcements
  users = User.all
  users.each do | user |
    UserAnnouncement.create([
      {
        user_id: user[:id],
        announcement_id: 1
      },
    ])
  end
end

create_announcements
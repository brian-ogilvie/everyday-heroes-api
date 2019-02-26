# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Level.create({num: 1, required_points: 0, habit_points: 10})

HeroicHabit.create([
  {name: HeroicHabit.names[:power]},
  {name: HeroicHabit.names[:balance]},
  {name: HeroicHabit.names[:focus]},
  {name: HeroicHabit.names[:treasure]},
  {name: HeroicHabit.names[:tribe]},
])

DailyTask.create([
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    day_released: 3, 
    title: "Sweat Set", 
    description: "Complete one circuit of these five essential movenents: Squat, Push-up, Pull-up, Core Hold, and Inverted Press. Do the most challenging version of each, but only for as many repetitions as you can smoothly. Be kind to your body!" 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    day_released: 3, 
    title: "Green Smoothie", 
    description: "Maintain a baseline of daily nutrition with your favorite recipe. Just remember to include raw, orgainc greens!" 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    day_released: 3, 
    title: "Qi Gong Level 1", 
    description: "Give your energy body a daily tune up! Complete the warm-up and first three movements of this ancient and incredibly effective moving meditation practice." 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    day_released: 3, 
    title: "Hydration Calibration", 
    description: "Drink at least 8 x 8oz classes of clean, natural water every day. Build the habit of drinking only water when you are thirsty. Avoid soda, fruit juice and energy drinks; your body does not understand these things. If you drink alcohol, have an 8oz glass of water for each drink you have." 
  },
  {
    heroic_habit_id: 1, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    day_released: 3, 
    title: "Hero Pose", 
    description: "Practice your Hero Pose in the mirror for at least 2 minutes! Your posture communicates how you feel about yourself to the world and dictates how people react to you. Expansive postures lower stress hormones and support healthy organ function!" 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    day_released: 10, 
    title: "Purge Page", 
    description: "Complete one page of stream-of-consciousness journaling. Avoid the temptation to judge it in any way. Just write what ever comes out of your head." 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    day_released: 10, 
    title: "Affirmations Aloud", 
    description: "Speak, chant or sing your positive affirmations while looking yourself in the eye. Begin to reprogram those negative self-beliefs." 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    day_released: 10, 
    title: "Life Missions Level 1", 
    description: "Spend five minutes visualizing the heroic completion of your Life Missions as if they are already a reality. Practice \"emotionally remembering the future.\"" 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    day_released: 10, 
    title: "Holosync Meditation", 
    description: "Complete the 30 minute Dive. This powerful technology provides you the benefits of deep meditation automatically, every time." 
  },
  {
    heroic_habit_id: 3, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    day_released: 10, 
    title: "Inner Smile Meditation", 
    description: "Complete a 5 minute scan of your internal organs. Simply smiling while you turn your attention inward can dramatically effective your mood and stress hormone levels!" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    day_released: 17, 
    title: "Foolish Love", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    day_released: 17, 
    title: "Hearth Health", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    day_released: 17, 
    title: "Dark Scan", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    day_released: 17, 
    title: "Soul Embrace", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    day_released: 17, 
    title: "Bless the Castle", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    day_released: 19, 
    title: "Life Missions Level 2", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    day_released: 19, 
    title: "Idea Machine", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    day_released: 19, 
    title: "Perfect Practice", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    day_released: 19, 
    title: "Grease the Wheels", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    day_released: 19, 
    title: "Tend the Roots", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    day_released: 26, 
    title: "Volunteer Today", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    day_released: 26, 
    title: "Lean On Me", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    day_released: 26, 
    title: "Response Ability", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    day_released: 26, 
    title: "Share Your Wisdom", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    day_released: 26, 
    title: "Help a Stranger", 
    description: "" 
  },
])

Level0Point.create([
  {heroic_habit_id: 1, points: 330},
  {heroic_habit_id: 2, points: 190},
  {heroic_habit_id: 3, points: 260},
  {heroic_habit_id: 4, points: 170},
  {heroic_habit_id: 5, points: 50},
])

User.create([
  {first_name: 'Brian', last_name: 'Ogilvie', email: 'brian@nowhere.com', password_digest: '12345678', screen_name: 'Gormal', level_id: 1},
  {first_name: 'Xander', last_name: 'Chauncey', email: 'brian@nowhere.com', password_digest: '12345678', screen_name: 'Icaro', level_id: 1},
])
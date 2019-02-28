# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Level.create({num: 1, required_points: 0, habit_points: 10})

HeroicHabit.create([
  {name: HeroicHabit.names[:power], intro_day: 1},
  {name: HeroicHabit.names[:balance], intro_day: 17},
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
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Hearth Health", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Dark Scan", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Soul Embrace", 
    description: "" 
  },
  {
    heroic_habit_id: 2, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Bless the Castle", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Life Missions Level 2", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Idea Machine", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Perfect Practice", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Grease the Wheels", 
    description: "" 
  },
  {
    heroic_habit_id: 4, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
    title: "Tend the Roots", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:fire], 
    level_id: 1, 
    title: "Volunteer Today", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:earth], 
    level_id: 1, 
    title: "Lean On Me", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:metal], 
    level_id: 1, 
    title: "Response Ability", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:water], 
    level_id: 1, 
    title: "Share Your Wisdom", 
    description: "" 
  },
  {
    heroic_habit_id: 5, 
    element: DailyTask.elements[:wood], 
    level_id: 1, 
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
  {created_at: 30.days.ago, first_name: 'Brian', last_name: 'Ogilvie', email: 'brian@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Gormal', level_id: 1},
  {created_at: 15.days.ago, first_name: 'Xander', last_name: 'Chauncey', email: 'xander@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Icaro', level_id: 1},
  {created_at: 2.days.ago, first_name: 'Dana', last_name: 'Ogilvie', email: 'dana@nowhere.com', password: '12345678', password_confirmation: '12345678', screen_name: 'Artemis', level_id: 1},
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
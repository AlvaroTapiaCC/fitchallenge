# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed Template -> variable = Model.create! col: value, col: value, col: value, ...

User.destroy_all

user1 = User.create! username: "JohnJones123", first_name: "John", last_name: "Jones", email: "j.jones123@gmail.com", role: "Admin"
user2 = User.create! username: "AlbertEinstein999", first_name: "Albert", last_name: "Einstein", email: "a.einstein@gmail.com", role: "Regular"

puts "Users Created Succesfuly"

challenge1 = Challenge.create! title: "Gym", description: "Go to the gym", points: 100 , start: Date.today , end: Date.today + 7 , creator_id: user1.id  
challenge2 = Challenge.create! title: "Diet", description: "300 cal deficit", points: 50 , start: Date.today , end: Date.today + 7 , creator_id: user1.id

puts "Challenges Created Succesfuly"

badge1 = Badge.create! name: "Top 1", description: "End first on the ranking of a challenge", icon_url: "badges/badge1.jpg"
badge2 = Badge.create! name: "Top 10", description: "Reach the top 10 on the ranking of a challenge", icon_url: "badges/badge2.jpg"

puts "Badges Created Succesfuly"

notification1 = Notification.create! user_id: user2.id, message: "You ended 6th on today's leaderboard"
notification2 = Notification.create! user_id: user1.id, message: "Your challenge Gym has 15 participants"

puts "Notifications Created Succesfuly"

user1_badge1 = UserBadge.create! user_id: user1.id, badge_id: badge1.id
user1_badge2 = UserBadge.create! user_id: user1.id, badge_id: badge2.id
user2_badge1 = UserBadge.create! user_id: user2.id, badge_id: badge1.id 

puts "UserBadges Created Succesfuly"

challenge_participant1 = ChallengeParticipant.create! user_id: user1.id, challenge_id: challenge2.id
challenge_participant2 = ChallengeParticipant.create! user_id: user2.id, challenge_id: challenge1.id

puts "ChallengeParticipants Created Succesfuly"

progress_entry1 = ProgressEntry.create! participant_id: challenge_participant1.id, progress_date: Date.today, description: "Earned 3 points today", points_earned: 3
progress_entry2 = ProgressEntry.create! participant_id: challenge_participant2.id, progress_date: Date.today - 5, description: "Earned 10 points today", points_earned: 10

puts "ProgressEntries Created Succesfuly"
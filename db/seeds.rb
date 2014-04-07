puts "Seeding..."

User.create! do |t|
  t.email = "Scott@email.com"
  t.password = "testingthepassword"
  t.player_id = 1
end

User.create! do |t|
  t.email = "alex@email.com"
  t.password = "testingthepassword"
  t.player_id = 2
end

t1 = Team.create! do |t|
  t.jersey_name = 'chicago bulls'
  t.tournament_id = t
end


t2 = Team.create! do |t|
  t.jersey_name = 'miami heat'
  t.tournament_id = t
end

g = Game.create! do |t|
  t.winner = ''
  t.score = ''
  t.home_team_id = 2
  t.away_team_id = 1
  t.tournament_id = t
end

t = Tournament.create! do |t|
  t.name = 'bulls vs heat'
  t.description = 'basketball tournament'
  t.start_date = Time.new(2014, 3, 21, 2, 2, 2, "+02:00")
  t.end_date = Time.new(2014, 3, 31, 2, 2, 2, "+02:00")
  t.sign_up_start= ' '
  t.sign_up_end= Time.new(2014, 3, 20, 2, 2, 2, "+02:00")
  t.style = 'bracket'
  t.champion = ''
end

t2.captain = alex
t1.captain = scott
t2.players << alex
t1.players << scott
t.games << g
t1.save
t2.save
t.save
puts "Complete!"

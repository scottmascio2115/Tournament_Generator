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

scott = Player.create! do |t|
  t.name = 'scott'
  t.twitter_handle = '@s_mas'
  t.personal_url = 'scottmascio.com'
  t.phone = '134-123-1234'
  t.bio = 'looking for basketball and fishing tournaments'
  t.captain = 'false'
  t.tournament_creator = 'false'
  t.city = 'chicago'
  t.state = 'illinois'
  t.zip = '60601'
  t.games_won = '0'
  t.games_lost = '0'
  t.games_played = '0'
  t.tournaments_won = '0'
  t.tournaments_lost = '0'
  t.tournaments_played = '0'
end

alex = Player.create! do |t|
  t.name = 'alex'
  t.twitter_handle = '@alex'
  t.personal_url = 'alex.com'
  t.phone = '134-123-1234'
  t.bio = 'looking to play some ping pong'
  t.captain = 'false'
  t.tournament_creator = 'false'
  t.city = 'columbus'
  t.state = 'ohio'
  t.zip = '60601'
  t.games_won = '5'
  t.games_lost = '2'
  t.games_played = '7'
  t.tournaments_won = '7'
  t.tournaments_lost = '0'
  t.tournaments_played = '7'
end


t1 = Team.create! do |t|
  t.jersey_name = 'chicago bulls'
  t.captain = ''
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
  t.start_date = ''
  t.end_date = ''
  t.style = 'bracket'
  t.champion = ''
end

t2.captain = alex
t1.captain = scott
t2.players << alex
t1.players << scott
t.games << g
puts "Complete!"

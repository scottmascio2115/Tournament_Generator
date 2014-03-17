puts "Seeding..."

User.create! do |t|
  t.email = "Scott@email.com"
  t.password = "testingthepassword"
  t.player_id = 1
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

t1 = Team.create! do |t|
  t.jersey_name = 'chicago bulls'
  t.captain = 'derek rose'
  t.tournament_id = t
end


t2 = Team.create! do |t|
  t.jersey_name = 'miami heat'
  t.captain = 'lebron james'
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

t1.players << scott
t.games << g
puts "Complete!"

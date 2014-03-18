TournyMadness.Team = DS.Model.extend({
  jersey_name: DS.attr('string'),
  tournament: DS.belongsTo('tournament'),
  home_games: DS.hasMany('game'),
  away_games: DS.hasMany('game'),
  players: DS.hasMany('player'),
  captain: DS.belongsTo('player')
});

TournyMadness.Game = DS.Model.extend({
  winner: DS.attr('string'),
  score: DS.attr('number'),
  home_team: DS.belongsTo('team'),
  away_team: DS.belongsTo('team'),
  tournament: DS.belongsTo('tournament')
});

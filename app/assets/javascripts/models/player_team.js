TournyMadness.playerTeam = DS.Model.extend({
  team: DS.belongsTo('team'),
  player: DS.belongsTo('player')
});


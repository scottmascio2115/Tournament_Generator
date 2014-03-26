TournyMadness.User= DS.Model.extend({
  email: DS.attr('string'),
  name: DS.attr('string'),
  player: DS.belongsTo('player')
});

TournyMadness.User= DS.Model.extend({
  email: DS.attr('string'),
  param: DS.attr('string'),
  player: DS.belongsTo('player')
});

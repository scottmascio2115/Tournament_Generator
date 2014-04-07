TournyMadness.User= DS.Model.extend({
  email: DS.attr('string'),
  name: DS.attr('string'),
  provider: DS.attr('string'),
  uid: DS.attr('string'),
  twitter_id: DS.attr('string'),
  twitter_screen_name: DS.attr('string'),
  twitter_display_name: DS.attr('string'),
  twitter_location: DS.attr('string'),
  player: DS.belongsTo('player')
});

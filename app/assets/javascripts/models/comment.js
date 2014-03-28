TournyMadness.Comment = DS.Model.extend({
  replier: DS.attr('string'),
  title: DS.attr('string'),
  description: DS.attr('string'),
  posts: DS.hasMany('post'),
  user: DS.belongsTo('user')
});

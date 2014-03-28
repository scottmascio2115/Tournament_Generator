TournyMadness.Post = DS.Model.extend({
  author: DS.attr('string'),
  title: DS.attr('string'),
  description: DS.attr('string'),
  comments: DS.hasMany('comment')
});

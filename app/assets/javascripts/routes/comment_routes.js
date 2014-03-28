TournyMadness.CommentsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('comment');
  }
});

TournyMadness.CommentRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('comment', params.comment_id);
  }
});


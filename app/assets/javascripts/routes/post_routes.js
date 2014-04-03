TournyMadness.PostsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('post');
  }
});

TournyMadness.PostRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('post', params.post_id);
  }
});

TournyMadness.PostsNewRoute = Ember.Route.extend({
});

TournyMadness.PostCommentRoute= Ember.Route.extend({
  model: function(params) {
    return this.store.find('comment', params.comment_id);
  }
});

TournyMadness.PostNewCommentRoute = Ember.Route.extend({
});


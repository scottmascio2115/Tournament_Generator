TournyMadness.UsersRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('user');
  }
});

TournyMadness.UserRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('user', params.user_id);
  }
});


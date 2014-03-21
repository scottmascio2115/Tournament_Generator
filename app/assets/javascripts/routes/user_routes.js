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

TournyMadness.UsersNewRoute = Ember.Route.extend({
  model: function() {
    return this.store.createRecord('user');
  }
});

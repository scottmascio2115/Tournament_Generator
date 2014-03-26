TournyMadness.IndexRoute = Ember.Route.extend({
  model: function() {
    return this.controllerFor('authentication').get('currentUser');
  }
});

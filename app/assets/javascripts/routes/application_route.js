TournyMadness.ApplicationRoute = Ember.Route.extend({
  beforeModel: function(transition) {
    var auth;
    auth = this.controllerFor('authentication');
    auth.extractAccessToken();
    if (!auth.get('isAuthenticated')) {
      transition.abort();
      return auth.login();
    }
  },
  model: function() {
    return this.controllerFor('authentication').get('currentUser');
  }
});


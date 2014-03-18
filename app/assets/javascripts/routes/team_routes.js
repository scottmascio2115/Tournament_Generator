TournyMadness.TeamsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('team');
  }
});

TournyMadness.TeamRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('team');
  }
});

TournyMadness.PlayersRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('player');
  }
});

TournyMadness.PlayerRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('player', params.player_id);
  }
});


TournyMadness.PlayersNewRoute = Ember.Route.extend({
  model: function() {
  }
});



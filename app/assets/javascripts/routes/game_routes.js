TournyMadness.GamesRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('game');
  }
});

TournyMadness.GameRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('game', params.game_id);
  }
});

TournyMadness.GameTeamRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('team', params.team_id);
  }
});



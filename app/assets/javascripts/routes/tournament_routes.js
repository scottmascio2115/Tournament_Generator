TournyMadness.TournamentsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('tournament');
  }
});

TournyMadness.TournamentRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('tournament', params.tournament_id);
  }
});

TournyMadness.TournamentGameRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('game', params.game_id);
  }
});

TournyMadness.TournamentTeamRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('team', params.team_id);
  }
});


TournyMadness.PlayerController = Ember.ObjectController.extend({
  percent_games_won: function() {
    var games_won = this.get('games_won');
    var games_played = this.get('games_played');
      return percent = ((games_won / games_played) * 100).toFixed(2);
  }.property('percent'),

  percent_games_lost: function() {
    var games_lost = this.get('games_lost');
    var games_played = this.get('games_played');
      return percent = ((games_lost / games_played) * 100).toFixed(2);
  }.property('percent'),

  percent_tournaments_won: function() {
    var tournaments_won = this.get('tournaments_won');
    var tournaments_played = this.get('tournaments_played');
      return percent = ((tournaments_won / tournaments_played) * 100).toFixed(2);
  }.property('percent'),

  percent_tournaments_lost: function() {
    var tournaments_lost = this.get('tournaments_lost');
    var tournaments_played = this.get('tournaments_played');
      return percent = ((tournaments_lost/ tournaments_played) * 100).toFixed(2);
  }.property('percent'),

});

// For more information see: http://emberjs.com/guides/routing/

TournyMadness.Router.map(function() {
  this.resource("players");
  this.resource("player", {path: "/:player_id"});
  this.resource("users");
  this.resource("user", {path: "/:user_id"});
  this.resource("tournaments");
  this.resource("tournament", {path: "/:tournament_id"}, function() {
    this.route("game", {path: "games/:game_id"});
  });
  this.resource("teams");
  this.resource("team", {path: "/:team_id"});
  this.resource("games");
  this.resource("game", {path: "/:game_id"});
});

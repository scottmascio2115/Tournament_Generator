// For more information see: http://emberjs.com/guides/routing/

TournyMadness.Router.map(function() {
  this.resource("players", function(){
    this.resource("player", {path: "/:player_id"});
    this.route("new");
  });

  this.resource("users", function() {
    this.route("new");
  });

  this.resource("user", {path: "/:user_id"});

  this.resource("tournaments", function(){
    this.resource("tournament", {path: "/:tournament_id"}, function() {
      this.route("game", {path: "games/:game_id"});
      this.route("team", {path: "team/:team_id"});
    });
  });

  this.resource("teams", function(){
    this.resource("team", {path: "/:team_id"});
  });

  this.resource("games", function(){
    this.resource("game", {path: "/:game_id"}, function(){
    this.route("team", {path: "team/:team_id"});
    });
  });

  this.resource("posts", function(){
    this.resource("post", {path: "/:post_id"}, function() {
      this.route("comment", {path: "comment/:comment_id"});
      this.route("new_comment", {path: "comment/new"});
    });
    this.route("new");
  });

  this.resource("comments", function(){
    this.resource("comment", {path: "/:comment_id"});
  });
});

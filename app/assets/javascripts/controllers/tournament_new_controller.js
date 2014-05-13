TournyMadness.NewTournamentController = Ember.ObjectController.extend({
 actions: {
    save: function() {
      var name= $('#name').val();
      var description= $('#description').val();
      var start_date= $('#start_date').val();
      var end_date= $('#end_date').val();
      var sign_up_start= $('#sign_up_start').val();
      var sign_up_end= $('#sign_up_end').val();
      var style= $('#style').val();

      var tournament= this.store.createRecord('tournament', {
        name: name,
        description: description,
        start_date: start_date,
        end_date: end_date,
        sign_up_start: sign_up_start,
        sign_up_end: sign_up_end,
        style: style
      });

      tournament.save();
      this.transitionToRoute('tournaments');
    }
  }
});


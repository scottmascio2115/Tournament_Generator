TournyMadness.PlayersNewController = Ember.ObjectController.extend({
 actions: {
    save: function() {
      var name= $('#name').val();
      var twitter_handle= $('#twitter_handle').val();
      var personal_url= $('#personal_url').val();
      var phone= $('#phone').val();
      var bio= $('#bio').val();
      var city= $('#city').val();
      var state= $('#state').val();
      var zip= $('#zip').val();

      var player = this.store.createRecord('player', {
        name: name,
        twitter_handle: twitter_handle,
        personal_url: personal_url,
        phone: phone,
        bio: bio,
        city: city,
        state: state,
        zip: zip
      });

      player.save();
      this.transitionToRoute('players');
    }
  }
});

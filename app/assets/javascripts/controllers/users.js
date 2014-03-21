TournyMadness.UsersNewController = Ember.ObjectController.extend({
   actions: {

    save: function() {
      var user = this.get('model');
      user.save();
      this.transitionToRoute('index');
    },

    cancel: function() {
      var user = this.get('model');
      user.deleteRecord();
      this.transitionToRoute('index');
    }

  }
});

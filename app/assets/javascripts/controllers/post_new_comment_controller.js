TournyMadness.PostNewCommentController = Ember.ObjectController.extend({
 actions: {
    save: function() {
      var title= $('#title').val();
      var description= $('#description').val();
      var replier= $('#replier').val();

      var comment= this.store.createRecord('comment', {
        title: title,
        description: description,
        author: replier
      });

      comment.save();
      this.transitionToRoute('posts');
    }
  }

});

TournyMadness.PostsNewController = Ember.ObjectController.extend({
 actions: {
    save: function() {
      var title= $('#title').val();
      var description= $('#description').val();
      var author= $('#author').val();

      var post= this.store.createRecord('post', {
        title: title,
        description: description,
        author: author
      });

      post.save();
      this.transitionToRoute('posts');
    }
  }
});


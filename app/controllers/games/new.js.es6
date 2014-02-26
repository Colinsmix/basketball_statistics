export default Ember.ObjectController.extend({
  needs: ['teams'],
  teamslist: function() {
    return this.get('controllers.teams');
  }.property()
});

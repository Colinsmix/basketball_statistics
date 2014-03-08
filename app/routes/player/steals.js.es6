export default Ember.Route.extend({
  model: function() {
    return this.modelFor('player');
  },
  actions: {
    destroyRecord: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('players.index');
      });
    }
  }
});

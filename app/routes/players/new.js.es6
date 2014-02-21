export default Ember.Route.extend({
  model: function(model) {
    return this.store.createRecord('player');
  },
  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  actions: {
    save: function() {
      var model = this.get('controller.model');
      model.set('team', this.modelFor('team'));
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('players.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('players.index');
    }
  }
});

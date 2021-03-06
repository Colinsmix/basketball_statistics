export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('game');
  },
  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  setupController: function(controller, model) {
    this._super(controller, model);
    var teams = this.store.find('team');
    controller.set('teams', teams);
  },
  actions: {
    save: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('games.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('games.index');
    }
  }
});

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('statline');
  },
  deactivate: function() {
    var model = this.get('controller.model');
    if (model.get('isNew')) {
      model.deleteRecord();
    }
  },
  setupController: function(controller, model) {
    this._super(controller, model);
    var games = this.store.find('game');
    var players = this.store.find('player');
    controller.set('games', games);
    controller.set('players', players);
  },
  actions: {
    save: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('statlines.show', model);
      });
    },
    cancel: function() {
      this.transitionTo('statlines.index');
    }
  }
});

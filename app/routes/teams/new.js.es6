export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('team');
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
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('teams.index');
      });
    },
    cancel: function() {
      this.transitionTo('teams.index');
    }
  }
});

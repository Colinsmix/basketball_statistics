export default Ember.ObjectController.extend({
  heightformat: function() {
    var height = this.get('model.height'),
         feet = Math.floor(height / 12),
         inches = height % 12;

    return [feet, inches].join("'");
  }.property('model.height')
});

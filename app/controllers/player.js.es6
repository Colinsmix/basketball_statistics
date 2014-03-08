export default Ember.ObjectController.extend({
  heightformat: function() {
    var height = this.get('model.height'),
         feet = Math.floor(height / 12),
         inches = height % 12;

    return [feet, inches].join("'");
  }.property('model.height'),

  statlinesdisplay: function() {
    var statlinesdisplay = [],
        statlines = this.get('model.statlines.content');

    for (var i=0;i<statlines.length;i++)
      {
        statlinesdisplay.push(statlines[i]._data);
      }
    return statlinesdisplay;
  }.property('model.statlines')
});

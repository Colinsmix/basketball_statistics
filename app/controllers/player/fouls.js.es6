export default Ember.ObjectController.extend({
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

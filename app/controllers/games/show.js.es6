export default Ember.ObjectController.extend({
  homelines: function() {
    var homelines = [];
    var statlines = this.get('content.statlines').content;
    for(var i=0;i<statlines.length;i++) {
      var statline = statlines[i];
      var player = statline.get('player');
      var game = statline.get('game')._data;
      if(player.get('team').id == game.hteam.id) {
        homelines.push(statline._data);
      }
    }
    return homelines;
  }.property('content.statlines.@each'),

  awaylines: function() {
    var awaylines = [];
    var statlines = this.get('content.statlines').content;
    for(var i=0;i<statlines.length;i++) {
      var statline = statlines[i];
      var player = statline.get('player');
      var game = statline.get('game');
      if(player.get('team').id == game.get('ateam').id) {
        awaylines.push(statline._data);
      }
    }
    return awaylines;
  }.property('content.statlines.@each')
});

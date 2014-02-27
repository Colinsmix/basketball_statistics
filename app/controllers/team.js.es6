export default Ember.ObjectController.extend({
  homegames: function() {
    var homegames = [];
    var games = this.get('content.games').content;
    for(var i=0;i<games.length;i++) {
      var game = games[i];
      if(game.get('hteam').id == this.get('content').id) {
        homegames.push(game);
      }
    }
    return homegames;
  }.property('content.games.@each'),

  awaygames: function() {
    var awaygames = [];
    var games = this.get('content.games').content;
    for(var i=0;i<games.length;i++) {
      var game = games[i];
      if(game.get('ateam').id == this.get('content').id) {
        awaygames.push(game);
      }
    }
    return awaygames;
  }.property('content.games.@each')
});

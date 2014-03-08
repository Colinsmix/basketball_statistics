var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('statlines', function() {
    this.route('new');
    this.route('show', {path: ':stat_line_id'});
    this.route('edit', {path: ':stat_line_id/edit'});
  });
  this.resource('teams', function() {
    this.resource('team', {path: ':team_id'}, function() {
      this.resource('players', function() {
        this.route('new');
        this.resource('player', {path: ':player_id'}, function() {
          this.route('points');
          this.route('rebounds');
          this.route('assists');
          this.route('steals');
          this.route('turnovers');
          this.route('fouls');
        });
        this.route('edit', {path: ':player_id/edit'});
      });
    });
    this.route('new');
    this.route('edit', {path: ':team_id/edit'});
  });
  this.resource('games', function() {
    this.route('new');
    this.route('show', {path: ':game_id'});
    this.route('edit', {path: ':game_id/edit'});
  });
});

export default Router;

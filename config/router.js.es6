var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('stat_lines', function() {
    this.route('new');
    this.route('show', {path: ':stat_line_id'});
    this.route('edit', {path: ':stat_line_id/edit'});
  });
  this.resource('teams', function() {
    this.resource('games', function() {
      this.route('new');
      this.route('show', {path: ':game_id'});
      this.route('edit', {path: ':game_id/edit'});
    });
    this.resource('team', {path: ':team_id'}, function() {
      this.resource('players', function() {
        this.route('new');
        this.route('show', {path: ':player_id'});
        this.route('edit', {path: ':player_id/edit'});
      });
    });
    this.route('new');
    this.route('edit', {path: ':team_id/edit'});
  });
});

export default Router;

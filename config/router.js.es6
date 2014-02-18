var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('teams', function() {
    this.route('new');
    this.route('show', {path: ':team_id'});
    this.route('edit', {path: ':team_id/edit'});
  });
  this.resource('teams');
});

export default Router;

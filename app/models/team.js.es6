export default DS.Model.extend({
  name: DS.attr('string'),
  location: DS.attr('string'),
  players: DS.hasMany('player'),
  homegames: DS.hasMany('game', {
    inverse: 'hteam'
  }),
  awaygames: DS.hasMany('game', {
    inverse: 'ateam'
  })
});


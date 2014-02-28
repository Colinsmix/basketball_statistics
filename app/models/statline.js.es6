export default DS.Model.extend({
  player: DS.belongsTo('player'),
  game: DS.belongsTo('game'),
  points: DS.attr('number'),
  rebounds: DS.attr('number'),
  assists: DS.attr('number'),
  steals: DS.attr('number'),
  turnovers: DS.attr('number'),
  fouls: DS.attr('number')
});

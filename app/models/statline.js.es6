export default DS.Model.extend({
  player: DS.belongsTo('player'),
  game: DS.belongsTo('game'),
  points: DS.attr('number')
});

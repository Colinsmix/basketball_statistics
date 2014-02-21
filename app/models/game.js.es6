export default DS.Model.extend({
  hteam: DS.belongsTo('team'),
  ateam: DS.belongsTo('team'),
  hteamScore: DS.attr('number'),
  ateamScore: DS.attr('number'),
});

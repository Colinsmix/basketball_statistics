export default DS.Model.extend({
  hteam: DS.belongsTo('team'),
  ateam: DS.belongsTo('team'),
  hteamscore: DS.attr('number'),
  ateamscore: DS.attr('number'),
  gameDate: DS.attr('date'),
  statlines: DS.hasMany('statline')
});

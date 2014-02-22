export default DS.Model.extend({
  team: DS.belongsTo('team'),
  statlines: DS.hasMany('statline'),
  position: DS.attr('string'),
  height: DS.attr('number'),
  weight: DS.attr('number'),
  firstname: DS.attr('string'),
  lastname: DS.attr('string')
});

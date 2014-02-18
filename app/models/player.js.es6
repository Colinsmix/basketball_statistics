export default DS.Model.extend({
  team: DS.belongsTo('team'),
  position: DS.attr('string'),
  height: DS.attr('int'),
  weight: DS.attr('int'),
  firstname: DS.attr('string'),
  lastname: DS.attr('string')
});

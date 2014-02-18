export default DS.Model.extend({
  teamId: DS.attr('int'),
  position: DS.attr('string'),
  height: DS.attr('int'),
  weight: DS.attr('int'),
  firstname: DS.attr('string'),
  lastname: DS.attr('string')
});

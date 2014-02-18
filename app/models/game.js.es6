export default DS.Model.extend({
  hteamId: DS.attr('number'),
  ateamId: DS.attr('number'),
  hteamScore: DS.attr('number'),
  ateamScore: DS.attr('number'),
  winnerId: DS.attr('number')
});

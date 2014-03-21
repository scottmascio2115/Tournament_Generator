TournyMadness.Tournament = DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  start_date: DS.attr('date'),
  end_date: DS.attr('date'),
  sign_up_start: DS.attr('date'),
  sign_up_end: DS.attr('date'),
  style: DS.attr('string'),
  champion: DS.attr('string'),
  teams: DS.hasMany('team'),
  games: DS.hasMany('game')
});

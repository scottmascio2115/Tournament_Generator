TournyMadness.User= DS.Model.extend({
  email: DS.attr('string'),
  encrypted_password: DS.attr('string'),
  reset_password_token: DS.attr('string'),
  reset_password_sent_at: DS.attr('date'),
  remember_created_at: DS.attr('date'),
  sign_in_count: DS.attr('number'),
  current_sign_in_at: DS.attr('date'),
  last_sign_at: DS.attr('date'),
  current_sign_in_ip: DS.attr('string'),
  last_sign_in_ip: DS.attr('string'),
  player: DS.belongsTo('player')
});

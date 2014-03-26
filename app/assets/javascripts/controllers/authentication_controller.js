TournyMadness.AuthenticationController = Ember.ObjectController.extend({
  init: function() {
    return this.set('accessToken', localStorage.accessToken);
  },
  accessToken: null,
  userId: null,

  isAuthenticated: Ember.computed.notEmpty('accessToken'),
  _redirectToSignIn: function() {
    return _redirectTo(window.ENV.apiHost + '/sign_in');
  },
  _redirectToSignOut: function() {
    return _redirectTo(window.ENV.apiHost + '/sign_out');
  },

  extractAccessToken: function() {
    var match;
    match = location.href.match(/authentication_token=([a-zA-Z0-9_-]+(\&)id=([0-9]+))/);
    if (match) {
      this.set('accessToken', match[2]);
      this.set('userId', match[3]);
      return location.href = location.origin + "/tournymadness/#/";
    }
  },

  login: function() {
    return this._redirectToSignIn();
  },

  logout: function() {
    this.set('accessToken', null);
    return this._redirectToSignOut();
  },

  accessTokenChanged: (function() {
    var token;
    token = this.get('accessToken');
    if (token) {
      return localStorage.accessToken = token;
    } else {
      return delete localStorage.accessToken;
    }
  }).observes("accessToken"),

  currentUser: (function() {
    var user;
    user = {};
    Ember.$.ajax({
      async: false,
      url: location.origin + "/api/v1/users/1.json",
      dataType: 'json',
      data: {},
      success: function(data) {
        return user = data.user;
      }
    });
    return user;
  }).property('accessToken', 'userId')
});


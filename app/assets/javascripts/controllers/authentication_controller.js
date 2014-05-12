var _redirectTo;

_redirectTo = function(url) {
  var uri;
  uri = url;
  uri += "?return_url=" + escape(location.href);
  return location.href = uri;
};

TournyMadness.AuthenticationController = Ember.ObjectController.extend({
  init: function() {
    this.set('accessToken', localStorage.accessToken);
    return this.set('userId', localStorage.userId);
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
      this.set('accessToken', match[1]);
      this.set('userId', match[3]);
      return location.href = location.origin + "/tournymadness/#";
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
  userIdChanged: (function() {
    var userId;
    userId = this.get('userId');
    if (userId) {
      return localStorage.userId = userId;
    } else {
      return delete localStorage.userId;
    }
  }).observes('userId'),
  currentUser: (function() {
    var user;
    return user = this.store.find('user', this.get('userId'));
  }).property('accessToken', 'userId')
});


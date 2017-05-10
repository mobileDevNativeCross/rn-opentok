/**
 * Stub of RNOpenTok for Android.
 *
 * @providesModule RNOpenTok
 * @flow
 */
'use strict';

var warning = require('fbjs/lib/warning');

var RNOpenTok = {
  test: function() {
    warning('Not yet implemented for Android.');
  },
  oki: function () { console.warn('oki'); },
  PublisherView: require('./PublisherViewAndroid').default,

};

module.exports = RNOpenTok;

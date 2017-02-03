'use strict';

var inFiubaApp = angular.module('inFiubaApp', ['ngSanitize', 'ngAnimate', 'ui.bootstrap', 'restangular']);

// Using RestangularProvider we can configure properties. To check all properties go to https://github.com/mgonto/restangular
inFiubaApp.config(function(RestangularProvider) {
  RestangularProvider.setBaseUrl('/api/v1');
});

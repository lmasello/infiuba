'use strict';

angular.module('inFiubaApp').controller('statsCtrl', function ($scope, Restangular) {
	Restangular.all('stats').getList().then(function (stats) {
		$scope.stats = stats;
	});
});

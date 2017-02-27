'use strict';

angular.module('inFiubaApp').controller('separatorCtrl', function ($scope, Restangular) {
	Restangular.one('separators', 1).get().then(function (separator) {
		$scope.description = separator.description;
	});
});

'use strict';

angular.module('inFiubaApp').controller('events', function ($scope, Restangular) {
	Restangular.all('events').customGET('').then(function (events) {
		$scope.eventsPerMonth = events.plain();
	});
});

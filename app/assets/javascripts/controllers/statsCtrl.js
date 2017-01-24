'use strict';

angular.module('inFiubaApp').controller('statsCtrl', function ($scope) {
	$scope.stats = [
		{
			'name': 'Stat 1',
			'value': '123',
			'border': 'red-border-bottom'
		},
		{
			'name': 'Stat 2',
			'value': '122',
			'border': 'green-border-bottom'
		},
		{
			'name': 'Stat 3',
			'value': '1000',
			'border': 'blue-border-bottom'
		},
		{
			'name': 'Stat 4',
			'value': '12',
			'border': 'yellow-border-bottom'
		}
	];
});

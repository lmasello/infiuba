'use strict';

angular.module('inFiubaApp').controller('aboutInfriendsCtrl', function ($scope, Restangular) {
	Restangular.one('infriends_programs', 1).get().then(function (program) {
		$scope.sectionTitle = program.title;
		$scope.infriendShortDescription = program.short_description;
		$scope.infriendBigMessage = program.message;
		$scope.infriendLargeDescription = program.large_description;
	});
});

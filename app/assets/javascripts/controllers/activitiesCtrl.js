'use strict';

angular.module('inFiubaApp').controller('activitiesCtrl', function ($scope, $modal, $log) {
	$scope.activities = [
		{
			'name': 'Trips',
			'id': 'trips',
			'details': 'Watch the photos of your trips',
			'imageUrl': 'images/activities/landing.jpg',
			'items': [
				{
				'name':'Cataratas',
				'album': 'https://goo.gl/photos/xfwVVDeQzkF7HUUA9'
				},
				{
				'name':'Bariloche',
				'album': 'https://goo.gl/photos/hmwziwB77chHz4aG8'
				}
			]
		},
		{
			'name': 'Sports',
			'id': 'sports',
			'details': 'Watch the photos of the matches you played.',
			'imageUrl': 'images/activities/football.jpg',
			'items': [
				{
					'name':'Partido de fútbol 12/9',
					'album':'https://goo.gl/photos/UX3usThDij55f3FG8'
				}
			]
		},
		{
			'name': 'Games',
			'id': 'games',
			'details': 'Watch the photos of your games.',
			'imageUrl': 'images/activities/games.jpg',
			'items':[
				{
					'name':'Buenos Aires Discovery Game',
					'album':''
				},
				{
					'name':'MasterChe',
					'album':''
				}
			]
		},
		{
			'name': 'Gatherings',
			'id': 'gatherings',
			'details': 'Watch the funny photos of parties and gatherings.',
			'imageUrl': 'images/activities/hangouts.jpg',
			'items':[
				{
					'name':'Asado INFIUBA',
					'album':''
				},
				{
					'name':'Welcome Party',
					'album':''
				},
				{
					'name':'Welcome Meeting',
					'album':''
				}
			]
		},
	];

  $scope.open = function (activityId) {

		var activityItems = null;

		$scope.activities.forEach(function(activity){
			if(activity.id == activityId)
				activityItems = activity.items;
		});

    var modalInstance = $modal.open({
      animation: true,
      templateUrl: 'galleryModalContent.html',
      controller: 'galleryModalInstanceCtrl',
      resolve: {
        items: function () {
					return activityItems;
        }
      }
    });

    modalInstance.result.then(function (selectedItem) {
      $scope.selected = selectedItem;
    }, function () {
      $log.info('Modal dismissed at: ' + new Date());
    });
  };

});

// Please note that $modalInstance represents a modal window (instance) dependency.
// It is not the same as the $uibModal service used above.

angular.module('inFiubaApp').controller('galleryModalInstanceCtrl', function ($scope, $modalInstance, items) {

  $scope.items = items;
  $scope.selected = {
    item: items[0]
  };

  $scope.ok = function () {
    $modalInstance.close();
  };
});

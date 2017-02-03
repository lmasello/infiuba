'use strict';

angular.module('inFiubaApp').controller('activitiesCtrl', function ($scope, Restangular, $uibModal, $log) {
	Restangular.all('activities').getList().then(function (activities) {
    $scope.activities = activities;

    $scope.open = function (activityId) {
  		var activityItems = null;
      $scope.activities.forEach(function (activity) {
        if(activity.id == activityId)
          activityItems = activity.albums;
      })

      var modalInstance = $uibModal.open({
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
});

// Please note that $modalInstance represents a modal window (instance) dependency.
// It is not the same as the $uibModal service used above.

angular.module('inFiubaApp').controller('galleryModalInstanceCtrl', function ($scope, $uibModalInstance, items) {

  $scope.items = items;
  $scope.selected = {
    item: items[0]
  };

  $scope.ok = function () {
    $uibModalInstance.close();
  };
});

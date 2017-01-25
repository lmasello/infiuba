'use strict';

angular.module('inFiubaApp').controller('generalInformationCtrl', function($scope, $uibModal, $log){
	/*
		Options: 0 (theCity), 1 (FIUBA), 2 (Accommodation), 3 (Legals)
	*/
	  $scope.open = function (size, option) {

		if (option === 0){
			$scope.items = {
				'sectionTitle': 'The city of Buenos Aires',
				'imageUrl': 'images/generalInfo/bsas.jpg',
				'imageUrl2': 'images/generalInfo/bsas2.jpg',
				'information': "Buenos Aires is the capital and largest city of Argentina, and the second-largest metropolitan area in South America. It is located on the western shore of the estuary of the Río de la Plata, on the continent's southeastern coast. The Greater Buenos Aires conurbation, which also includes several Buenos Aires Province districts, constitutes the third-largest conurbation in Latin America, with a population of around fifteen and a half million.<br /><br />The city of Buenos Aires is neither part of Buenos Aires Province nor the Province's capital; rather, it is an autonomous district. In 1880, after decades of political infighting, Buenos Aires was federalized and removed from Buenos Aires Province. The city limits were enlarged to include the towns of Belgrano and Flores; both are now neighborhoods of the city. The 1994 constitutional amendment granted the city autonomy, hence its formal name: Ciudad Autónoma de Buenos Aires (Autonomous City of Buenos Aires). Its citizens first elected a Chief of Government (i.e. Mayor) in 1996; before, the Mayor was directly appointed by the President of the Republic.<br /><br />Buenos Aires is, along with Mexico City and São Paulo, one of the three Latin American cities considered an 'alpha city' by the study GaWC5. Buenos Aires' quality of life was ranked 81st in the world and one of the best in Latin America in 2012, with its per capita income among the three highest in the region. It is the most visited city in South America (ahead of Rio de Janeiro) and the second most visited city across Spanish Latin America (behind Mexico City). It is also one of the most important, largest and most populous of South American capitals, often referred to as the Paris of Americas. In waters by Buenos Aires, took place the first naval battle in the Second World War and the first one of Battle of the Atlantic, the Battle of the River Plate.<br /><br />Buenos Aires is a top tourist destination, and is known for its European-style architecture and rich cultural life, with the highest concentration of theaters in the world. Buenos Aires held the 1st Pan American Games in 1951 as well as hosting two venues in the 1978 FIFA World Cup. Buenos Aires will host the 2018 Summer Youth Olympics.<br /><br />People from Buenos Aires are referred to as porteños (people of the port). The city is the birthplace of the current pope, Francis (former Archbishop of Buenos Aires), and of Queen Máxima of the Netherlands."
			}
		}

		else if (option === 1) {
			$scope.items = {
				'sectionTitle': 'Studying at FIUBA',
				'imageUrl': 'images/generalInfo/sedePC.jpg',
				'imageUrl2': 'images/generalInfo/sedeLH.jpg',
				'information': ""
			}
		}

		else if (option === 2) {
			$scope.items = {
				'sectionTitle': 'Finding Accommodation',
				'imageUrl': 'images/generalInfo/',
				'imageUrl2': 'images/generalInfo/',
				'information': ""
			}
		}

		else if (option === 3) {
			$scope.items = {
				'sectionTitle': 'Legals',
				'imageUrl': 'images/generalInfo/',
				'imageUrl2': 'images/generalInfo/',
				'information': ""
			}
		}

		$scope.animationsEnabled = true;

	    var modalInstance = $uibModal.open({
	      animation: $scope.animationsEnabled,
	      templateUrl: 'infoModalContent.html',
	      controller: 'infoModalInstanceCtrl',
	      size: size,
	      resolve: {
	        items: function () {
	          return $scope.items;
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
// It is not the same as the $modal service used above.

angular.module('inFiubaApp').controller('infoModalInstanceCtrl', function ($scope, $uibModalInstance, items) {

  $scope.items = items;
  $scope.selected = {
    item: $scope.items[0]
  };

  $scope.sectionTitle = items['sectionTitle'];
  $scope.imageUrl = items['imageUrl'];
  $scope.imageUrl2 = items['imageUrl2'];
  $scope.information = items['information'];

  $scope.ok = function () {
    $uibModalInstance.close($scope.selected.item);
  };

  $scope.cancel = function () {
    $uibModalInstance.dismiss('cancel');
  };
});

'use strict';

angular.module('inFiubaApp').controller('testimonialsCtrl', function ($scope) {
	$scope.testimonials = [
		{
			'name': 'Somebody',
			'city': 'Somewhere',
			'imageUrl': 'students/1.jpg',
			'message': 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium sapiente voluptate nostrum ipsa tempora optio facilis beatae quo aut error corrupti officiis dolore accusantium rem rerum illum nulla sed quisquam.'
		},
		{
			'name': 'Somebody',
			'city': 'Somewhere',
			'imageUrl': 'students/2.jpg',
			'message': 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium sapiente voluptate nostrum ipsa tempora optio facilis beatae quo aut error corrupti officiis dolore accusantium rem rerum illum nulla sed quisquam.'
		},
		{
			'name': 'Somebody',
			'city': 'Somewhere',
			'imageUrl': 'students/3.jpg',
			'message': 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium sapiente voluptate nostrum ipsa tempora optio facilis beatae quo aut error corrupti officiis dolore accusantium rem rerum illum nulla sed quisquam.'
		}
	];
});

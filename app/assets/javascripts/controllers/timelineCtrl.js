'use strict';

angular.module('inFiubaApp').controller('events', function ($scope) {
	$scope.eventsPerMonth = [
	{
		'monthAndYear': 'September 2015',
		'events': [
		{
			'day': '19',
			'dayName': 'Sat',
			'title': 'Asado INFIUBA Vol. II',
			'imageUrl': 'images/events/tira-de-asado.jpg',
			'link': 'https://www.facebook.com/events/836202639831499/',
			'description': 'You shouldn\'t go back to your country without having tasted argentinian steak. So that, this time we are going to organize a special barbecue in the terrace of the Uni.'
		},
		{
			'day': '10',
			'dayName': 'Thu',
			'title': 'Jueves en Jobs',
			'imageUrl': 'images/events/jobs.jpeg',
			'link': 'https://www.facebook.com/events/1496811827300305/',
			'description': 'Having fun in Jobs bar.'
		}
		]
	},
	{
		'monthAndYear': 'August 2015',
		'events': [
		{
			'day': '29',
			'dayName': 'Sat',
			'title': 'Welcome Party FIUBA',
			'imageUrl': 'images/events/party.jpg',
			'link': 'https://www.facebook.com/events/158954637772025/',
			'description': 'Bla bla bla bla bla bla'
		},
		{
			'day': '23',
			'dayName': 'Sat',
			'title': 'Buenos Aires Discovery Game',
			'imageUrl': 'images/events/badg.jpg',
			'link': 'https://www.facebook.com/events/922540247782170/',
			'description': 'Have you ever thought of meeting new people, having fun and at the same time discover the history and beautiful places of such an amazing city as Buenos Aires? If you like the idea, then you must come to this wonderful game.'
		},
		{
			'day': '13',
			'dayName': 'Thu',
			'title': 'Welcome meeting',
			'imageUrl': 'images/events/fiuba.jpg',
			'link': 'https://www.facebook.com/events/965263490204613/',
			'description': 'In this official meeting, the Faculty will give you important information about the life in Buenos Aires and all the important things you need to know about the College.'
		}
		]
	}
	];
});

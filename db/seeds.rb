Article.create(name: 'The city', title: 'The city of Buenos Aires')
Article.create(name: 'Accommodation', title: 'Finding Accommodation')
Article.create(name: 'Legals', title: 'Legals')
AdminUser.create!(email: 'admin@example.com', password: 'password',
                  password_confirmation: 'password')

Activity.create(name: 'Trips', image_url: 'activities/landing.jpg',
                details: 'Watch the photos of your trips')
Activity.create(name: 'Sports', image_url: 'activities/football.jpg',
                details: 'Watch the photos of the matches you have played.')
Activity.create(name: 'Games', image_url: 'activities/games.jpg',
                details: 'Watch the photos of your games')
Activity.create(name: 'Gatherings', image_url: 'activities/hangouts.jpg',
                details: 'Watch the funny photos of parties and gatherings.')
Activity.find_by(name: 'Trips').albums.create(name: 'Cataratas',
                                              url: 'https://goo.gl/photos/xfwVVDeQzkF7HUUA9')
Activity.find_by(name: 'Trips').albums.create(name: 'Bariloche',
                                              url: 'https://goo.gl/photos/hmwziwB77chHz4aG8')
Activity.find_by(name: 'Sports').albums.create(name: 'Partido de fútbol 12/9',
                                               url: 'https://goo.gl/photos/UX3usThDij55f3FG8')
Activity.find_by(name: 'Games').albums.create(name: 'Buenos Aires Discovery Game',
                                              url: 'https://goo.gl/photos/UX3usThDij55f3FG8')
Activity.find_by(name: 'Gatherings').albums.create(name: 'Asado INFIUBA',
                                                   url: 'https://goo.gl/photos/UX3usThDij55f3FG8')
Event.create(name: 'Asado INFIUBA Vol. II', date: '19/9/2015',
             url: 'https://www.facebook.com/events/836202639831499/',
             image_url: 'events/tira-de-asado.jpg',
             details: 'You shouldn\'t go back to your country without having tasted argentinian
                       steak. So that, this time we are going to organize a special barbecue in
                       the terrace of the Uni.')
Event.create(name: 'Asado INFIUBA Vol. II', date: '10/9/2015',
             url: 'https://www.facebook.com/events/1496811827300305/',
             image_url: 'events/jobs.jpeg',
             details: 'Having fun in Jobs bar.')
Event.create(name: 'Asado INFIUBA Vol. II', date: '23/8/2015',
             url: 'https://www.facebook.com/events/922540247782170/',
             image_url: 'events/badg.jpg',
             details: 'Have you ever thought of meeting new people, having fun and at the same time
                      discover the history and beautiful places of such an amazing city as Buenos
                      Aires? If you like the idea, then you must come to this wonderful game.')

logs = [
        ['Check mails', '04/06/2017 at 10:30', 'Home', 'Yes'],
        ['Pickup car', '06/06/2017 at 3pm', 'Hackney Garage', 'No'],
        ['Visit Charles', '07/06/2017 at 6pm', 'Holloway', 'No'],
        ['Call Mike', '08/06/2017 at 7pm', 'New York', 'No']
      ]
db_data = logs.map {|log| Log.create(what: log[0], when: log[1], where: log[2], done: log[3])}

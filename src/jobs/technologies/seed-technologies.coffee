require('rootpath')()
helper = require('src/jobs/jobs-helper')()

getTechnologies = () ->

  technologies = []
  technologies.push { query: {}, document: {name: 'Android Front-End'}  }


  return technologies

sync = (db, data_handling) ->

  db.Technology.dropCollection (err, data) ->

    db.Technology.bulkSaveOrUpdate getTechnologies(), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

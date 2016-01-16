require('rootpath')()
helper = require('src/jobs/jobs-helper')()

getEmployees = () ->

  employees = []
  employees.push { query: {}, document: {name: 'Android Front-End'}  }


  return technologies

sync = (db, data_handling) ->

  db.Employee.dropCollection (err, data) ->

    db.Technology.findLean null, (err, data) ->

      console.log data

      # db.Employee.bulkSaveOrUpdate getEmployees(), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

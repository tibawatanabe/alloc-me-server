require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')

ANDROID_BACK_END = "Android Back-End"

getArrayOfTechnologiesIds = (technologiesNames, technologiesData) ->

  arrIds = _.map technologiesNames, (techName) ->
    filtered = technologiesData.filter (techData) ->
      if techData.name == techName
        return true
      else
        return false
        
    return filtered[0]._id

  return arrIds

  return _.map technologiesNames, (techName) ->
    return techName


getEmployees = (technologies) ->

  employees = []
  employees.push { query: null, document: {name: 'Alexandre Fugita', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }

  console.log JSON.stringify(employees)

  return technologies

sync = (db, data_handling) ->

  db.Employee.dropCollection (err, data) ->

    db.Technology.find null, (err, technologies) ->

      # console.log technologies

      getEmployees(technologies)

      # db.Employee.bulkSaveOrUpdate getEmployees(technologies), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

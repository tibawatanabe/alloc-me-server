require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')

ALEXANDRE_FUGITA = "Alexandre Fugita"

LAB_IN_HANDS = 'Lab in Hands'

getProjectId = (projectName, projectData) ->

  filtered = projectData.filter (data) ->
    if data.name == projectName
      return true
    else
      return false

  return filtered[0]._id

getEmployeeId = (employeeName, employeeData) ->

  filtered = employeeData.filter (data) ->
    if data.name == employeeName
      return true
    else
      return false

  return filtered[0]._id

getAllocations = (projectsData, employeesData) ->

  allocations = []

  LAB_IN_HANDS_FUGITA=
    project_id: getProjectId(LAB_IN_HANDS, projectsData)
    employee_id: getEmployeeId(ALEXANDRE_FUGITA, employeesData)
    startDate: Date.parse("1/1/2016")
    endDate: Date.parse("1/31/2016")
    realAllocation: true

  allocations.push { query: null, document: LAB_IN_HANDS_FUGITA }

  console.log JSON.stringify allocations

  return allocations

sync = (db, data_handling) ->

  db.Allocation.dropCollection (err, data) ->

    db.Employee.find null, (err, employees) ->

      db.Project.find null, (err, projects) ->

        db.Allocation.bulkSaveOrUpdate getAllocations(projects, employees), (err, data) ->

          data_handling.close()

sync helper.db, helper.data_handling

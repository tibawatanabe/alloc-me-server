ObjectID = require('mongodb').ObjectID

module.exports = (http, db, _, async) ->
  getEmployeesToAlloc: (startDateTimeStamp, endDateTimeStamp, technologies, callback) ->

    startDate = (parseInt startDateTimeStamp)
    endDate = (parseInt endDateTimeStamp)

    queryOne =
      realAllocation: true
      startDate: {$gte: startDate, $lte: endDate}

    queryTwo =
      realAllocation: true
      endDate: {$gte: startDate, $lte: endDate}

    arrTechnologies = technologies.split(",").map (elem) ->
      return new ObjectID(elem)

    query = {}
    query['$or'] = [queryOne, queryTwo]

    db.Allocation.findLean query, (err, allocations) ->

      employeeIdsBlackList = []
      employeeIdsBlackList = _.map allocations, (allocation) ->
        return allocation.employee_id

      queryEmployee =
        technologies: {$in: arrTechnologies}
        _id: {$nin: employeeIdsBlackList}

      db.Employee.findLean queryEmployee, (err, employees) ->

        callback http.responseBuilder.build({employees: employees})

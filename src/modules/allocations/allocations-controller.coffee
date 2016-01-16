module.exports = (http, db, _, async) ->
  getAll: (data, callback) ->

    employees = []
    projects = []

    async.parallel [
      (cb) ->
        db.Employee.find null, (err, res) ->
          employees = res
          cb()

      ,
      (cb) ->
        db.Project.find null, (err, res) ->
          projects = res
          cb()

    ], (err) ->

    db.Allocation.findLean null, (err, allocations) ->

      allocReturned = _.map allocations, (allocation) ->
        newAlloc =
          _id: allocation._id
          startDate: allocation.startDate
          endDate: allocation.endDate
          realAllocation: allocation.realAllocation
          project: _.find(projects, '_id', allocation.project_id)
          employee: _.find(employees, '_id', allocation.employee_id)

        return newAlloc


      callback http.responseBuilder.build(allocReturned)

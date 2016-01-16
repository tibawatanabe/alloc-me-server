module.exports = (http, db, _, async) ->
  getAll: (data, callback) ->

    employees = []
    projects = []
    employeesAllocced = []

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

        contains = false
        employeesAllocced.filter (employee) ->
          if employee._id == newAlloc.employee
            contains = true
            return true
          else
            return false

        if not contains
          employeesAllocced.push newAlloc.employee

        return newAlloc


      response =
        employees: employeesAllocced.sort (a, b) -> return a.name.localeCompare(b.name)
        allocations: allocReturned

      callback http.responseBuilder.build(response)

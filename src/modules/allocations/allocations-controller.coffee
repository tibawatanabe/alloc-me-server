module.exports = (http, db, _, async) ->

  getEmployeeById = (employees, employeeId) ->


    for employee in employees

      if employeeId.toString() == employee._id.toString()
        return employee

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
          employee: getEmployeeById(employees, allocation.employee_id)


        arrFiltered = employeesAllocced.filter (employee) ->
          if employee._id == newAlloc.employee._id
            return true
          else
            return false


        if arrFiltered.length == 0
          # console.log newAlloc.employee
          employeesAllocced.push newAlloc.employee

        return newAlloc


      response =
        employees: employeesAllocced.sort (a, b) -> return a.name.localeCompare(b.name)
        allocations: allocReturned

      callback http.responseBuilder.build(response)

module.exports = (dataHandling, schemas) ->

  Employee: dataHandling.model(schemas.employee, 'employee')
  Technology: dataHandling.model(schemas.technology, 'technology')
  Allocation: dataHandling.model(schemas.technology, 'allocation')
  Project: dataHandling.model(schemas.technology, 'project')

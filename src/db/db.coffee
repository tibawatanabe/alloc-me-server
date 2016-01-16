module.exports = (dataHandling, schemas) ->

  Employee: dataHandling.model(schemas.employee, 'employee')
  Technology: dataHandling.model(schemas.technology, 'technology')
  Role: dataHandling.model(schemas.technology, 'role')

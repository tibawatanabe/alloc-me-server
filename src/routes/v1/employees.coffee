module.exports = (module) ->

  controllers = module.controllers

  console.log controllers

  return (router) ->

    router.get '/employees/get-employees-to-alloc', (req, res) ->
      controllers.getEmployeesToAlloc.getEmployeesToAlloc req.query.startDate, req.query.endDate, req.query.technologies, (response) ->
        return response.send(res)

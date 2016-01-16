module.exports = (module) ->

  controllers = module.controllers

  console.log controllers

  return (router) ->

    router.get '/employees/get-employees-to-alloc', (req, res) ->
      controllers.getEmployeesToAlloc.getEmployeesToAlloc req.query.startDate, req.query.endDate, req.query.technologies, (response) ->
        res.header 'Access-Control-Allow-Origin', '*'
        return response.send(res)

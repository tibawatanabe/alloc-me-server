module.exports = (module) ->

  controllers = module.controllers

  console.log controllers

  return (router) ->

    router.get '/allocation/get-all', (req, res) ->
      controllers.getAll.getAll null, (response) ->
        return response.send(res)

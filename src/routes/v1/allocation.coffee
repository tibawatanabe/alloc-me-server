module.exports = (module) ->

  controllers = module.controllers

  return (router) ->

    router.get '/allocation/get-all', (req, res) ->
      controllers.getAll.getAll null, (response) ->

        # res.header 'Access-Control-Allow-Origin', '*'

        return response.send(res)

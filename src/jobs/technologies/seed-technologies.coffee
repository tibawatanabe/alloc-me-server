require('rootpath')()
helper = require('src/jobs/jobs-helper')()

sync = (db, data_handling) ->

  

  data_handling.close()

sync helper.db, helper.data_handling

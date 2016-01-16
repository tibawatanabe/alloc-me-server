require('rootpath')()
helper = require('src/jobs/jobs-helper')()

ALEXANDRE_FUGITA = "Alexandre Fugita"



ANDROID_BACK_END = "Android Back-End"


getProjects = () ->

  projects = []
  projects.push { query: null, document: {name: 'Lab in Hands', technologies:}  }


  return projects

sync = (db, data_handling) ->

  db.Project.dropCollection (err, data) ->

    db.Project.bulkSaveOrUpdate getProjects(), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

require('rootpath')()
helper = require('src/jobs/jobs-helper')()

getTechnologies = () ->

  technologies = []
  technologies.push { query: null, document: {name: 'Android Front-End'}  }
  technologies.push { query: null, document: {name: 'Android Back-End'}  }

  technologies.push { query: null, document: {name: 'Ios Front-End'}  }
  technologies.push { query: null, document: {name: 'Ios Back-End'}  }

  technologies.push { query: null, document: {name: 'WP Front-End'}  }
  technologies.push { query: null, document: {name: 'WP Back-End'}  }

  technologies.push { query: null, document: {name: 'Node'}  }

  technologies.push { query: null, document: {name: 'Angular'}  }

  technologies.push { query: null, document: {name: 'RoR'}  }

  return technologies

sync = (db, data_handling) ->

  db.Technology.dropCollection (err, data) ->

    db.Technology.bulkSaveOrUpdate getTechnologies(), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

require('rootpath')()
helper = require('src/jobs/jobs-helper')()

getTechnologies = () ->

  technologies = []
  technologies.push { query: {}, document: {name: 'Android Front-End'}  }
  technologies.push { query: {}, document: {name: 'Android Back-End'}  }

  technologies.push { query: {}, document: {name: 'Ios Front-End'}  }
  technologies.push { query: {}, document: {name: 'Ios Back-End'}  }

  technologies.push { query: {}, document: {name: 'WP Front-End'}  }
  technologies.push { query: {}, document: {name: 'WP Back-End'}  }

  technologies.push { query: {}, document: {name: 'Node'}  }

  technologies.push { query: {}, document: {name: 'Angular'}  }

  technologies.push { query: {}, document: {name: 'RoR'}  }

  return technologies

sync = (db, data_handling) ->

  db.Technology.dropCollection (err, data) ->

    db.Technology.bulkSaveOrUpdate getTechnologies(), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

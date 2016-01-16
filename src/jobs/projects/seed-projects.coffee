require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')



# Technologies
ANDROID_FRONT_END = "Android Front-End"
ANDROID_BACK_END = "Android Back-End"
IOS_FRONT_END = "Ios Front-End"
IOS_BACK_END = "Ios Back-End"
WP_FRONT_END = "WP Front-End"
WP_BACK_END = "WP Back-End"
NODE = "Node"
ANGULAR = "Angular"
ROR = "RoR"



getArrayOfTechnologiesIds = (technologiesNames, technologiesData) ->

  arrIds = _.map technologiesNames, (techName) ->
    filtered = technologiesData.filter (techData) ->
      if techData.name == techName
        return true
      else
        return false

    return filtered[0]._id

  return arrIds

getProjects = (technologiesData, employeesData) ->

  projects = []

  LAB_IN_HANDS =
    name: 'Lab in Hands'
    technologies: getArrayOfTechnologiesIds([IOS_BACK_END, IOS_FRONT_END], technologiesData)
    startDate: Date.parse("1/1/2016")
    endDate: Date.parse("1/31/2016")

  projects.push { query: null, document:  LAB_IN_HANDS}

  return projects

sync = (db, data_handling) ->

  db.Project.dropCollection (err, data) ->

    db.Employee.find null, (err, employees) ->

      db.Technology.find null, (err, technologies) ->

        db.Project.bulkSaveOrUpdate getProjects(technologies, employees), (err, data) ->

          data_handling.close()

sync helper.db, helper.data_handling

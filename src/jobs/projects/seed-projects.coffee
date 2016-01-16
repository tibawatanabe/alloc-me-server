require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')



# Technologies
ANDROID_FRONT_END = "Android Front-End"
ANDROID_BACK_END = "Android Back-End"
ANDROID = [ANDROID_FRONT_END, ANDROID_BACK_END]
IOS_FRONT_END = "Ios Front-End"
IOS_BACK_END = "Ios Back-End"
IOS = [IOS_FRONT_END, IOS_BACK_END]
WP_FRONT_END = "WP Front-End"
WP_BACK_END = "WP Back-End"
WP = [WP_FRONT_END, WP_BACK_END]
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

createProject = (name, technologies, technologiesData, iniDate, endDate) ->
  project =
    name: name
    technologies: getArrayOfTechnologiesIds(technologies, technologiesData)
    startDate: Date.parse(iniDate)
    endDate: Date.parse(endDate)
  return project

getProjects = (technologiesData, employeesData) ->

  projects = []

  JAN = "1"
  FEB = "2"
  MAR = "3"
  APR = "4"
  MAY = "5"
  JUN = "6"
  JUL = "7"
  AGO = "8"
  SEP = "9"
  OCT = "10"
  NOV = "11"
  DEC = "12"

  WEEK1_INI = "/1/2016"
  WEEK1_END = "/8/2016"
  WEEK2_INI = "/9/2016"
  WEEK2_END = "/16/2016"
  WEEK3_INI = "/17/2016"
  WEEK3_END = "/24/2016"
  WEEK4_INI = "/25/2016"
  WEEK4_END = "/31/2016"

PRO120 - Start: 18/01 End: 13/05
Raia - End 18/02
WebMotors End:22/01
Ponto Frio mSite End: 26/01
Starbucks: End: 08/04
EMS iOS9: End: End: 11/03
Panelinha: Start: 02/02 End 10/05
Webmotors fase 2 Start: 02/02 End: 26/02
Raia fase 2: End: 26/02
Merck: Start:18/01 End:18/03 
Marsh Android: Start: 01/02 End: 22/02
Cnova Marketplace Internacional Android/iOS Start: 16/02 End:24/05


  PRO_120 = createProject('Pro 120', [NODE, ANDROID], technologiesData, JAN + WEEK3_INI, MAY + WEEK2_END)
  projects.push { query: null, document:  PRO_120}

  LAB_IN_HANDS = createProject('Lab in Hands', [IOS, NODE], technologiesData, JAN + WEEK1_INI, FEB + WEEK1_END)
  projects.push { query: null, document:  LAB_IN_HANDS}

  WEBMOTORS = createProject('WebMotors', [ANDROID], technologiesData, JAN + WEEK1_INI, JAN + WEEK3_END)
  projects.push { query: null, document:  WEBMOTORS}

  WEBMOTORS_FASE_2 = createProject('WebMotors fase 2', [ANDROID], technologiesData, FEB + WEEK1_INI, FEB + WEEK4_END)
  projects.push { query: null, document:  WEBMOTORS_FASE_2}

  MERCK = createProject('Merck', [IOS, NODE], technologiesData, JAN + WEEK3_INI, FEB + WEEK3_END)
  projects.push { query: null, document:  MERCK}

  CANAL_DA_PECA = createProject('Canal da peça', [ANGULAR, NODE], technologiesData, JAN + WEEK1_INI, JAN + WEEK1_END)
  projects.push { query: null, document:  CANAL_DA_PECA}

  MARKETPLACE_INTERNCIONAL_MSITES = createProject('CNova - Marketplace interncional (mSites)', [ANGULAR, NODE], technologiesData, JAN + WEEK2_INI, FEB + WEEK4_END)
  projects.push { query: null, document:  MARKETPLACE_INTERNCIONAL_MSITES}

  PONTO_FRIO_MSITE = createProject('Ponto Frio mSite', [ANGULAR, NODE], technologiesData, JAN + WEEK1_INI, JAN + WEEK4_END)
  projects.push { query: null, document:  PONTO_FRIO_MSITE}

  MARKETPLACE_INTERNCIONAL_IOS_ANDROID = createProject('CNova - Marketplace interncional (iOS/Android)', [IOS, ANDROID], technologiesData, FEB + WEEK3_INI, MAY + WEEK3_END)
  projects.push { query: null, document:  MARKETPLACE_INTERNCIONAL_IOS_ANDROID}

  RAIA = createProject('Raia', [IOS, ANDROID, NODE], technologiesData, JAN + WEEK1_INI, FEB + WEEK3_END)
  projects.push { query: null, document:  RAIA}

  RAIA_FASE_2 = createProject('Raia fase 2', [IOS, NODE, ANDROID], technologiesData, JAN + WEEK1_INI, FEB + WEEK4_END)
  projects.push { query: null, document:  RAIA_FASE_2}

  STARBUCKS = createProject('Starbucks', [WP], technologiesData, JAN + WEEK1_INI, APR + WEEK1_END)
  projects.push { query: null, document:  STARBUCKS}

  EMS_IOS9 = createProject('EMS iOS9', [IOS], technologiesData, JAN + WEEK1_INI, MAR + WEEK2_END)
  projects.push { query: null, document:  EMS_IOS9}

  PANELINHA = createProject('Panelinha', [NODE, ANGULAR], technologiesData, FEB + WEEK1_INI, MAY + WEEK2_END)
  projects.push { query: null, document:  PANELINHA}

  MARSH_ANDROID = createProject('Marsh Android', [ANDROID], technologiesData, FEB + WEEK1_INI, FEB + WEEK3_END)
  projects.push { query: null, document:  MARSH_ANDROID}

  return projects

sync = (db, data_handling) ->

  db.Project.dropCollection (err, data) ->

    db.Employee.find null, (err, employees) ->

      db.Technology.find null, (err, technologies) ->

        db.Project.bulkSaveOrUpdate getProjects(technologies, employees), (err, data) ->

          data_handling.close()

sync helper.db, helper.data_handling

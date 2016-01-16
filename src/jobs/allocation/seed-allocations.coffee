require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')

ALEXANDRE_FUGITA = "Alexandre Fugita"
ALINNE_HANAKO = "Alinne Hanako"
ANA_MARANINI = "Ana Maranini"
ANDRE_KANAYAMA = "André Kanayama"
ANDRE_SALES = "André Sales"
ANDREA_MARX = "Andrea Marx"
ARTHUR_FONSECA = "Arthur Fonseca"
DANIEL_NAKASATO = "Daniel Nakasato"
DANIEL_BARRETO = "Daniel Barreto"
DANILO_TOLEDO = "Danilo Toledo"
DEROMIR_NEVES = "Deromir Neves"
EDMAR_MIYAKE = "Edmar Miyake"
EIDI_TAKAHASHI = "Eidi Takahashi"
ERICA_URUSHIBATA = "Erica Urushibata"
FABIO_HIROKI = "Fábio Hiroki"
FELIPE_SABINO = "Felipe Sabino"
FILIPE_LIMA = "Filipe Lima"
FILIPE_PEREIRA = "Filipe Pereira"
FLAVIO_MELLO = "Flavio  Mello"
GABRIELA_MARQUES = "Gabriela Marques"
GEORGE_CHAVES = "George Chaves"
GREG_MILANI = "Greg Milani"
GUILHERME_HASHIOKA = "Guilherme Hashioka"
GUILHERME_MAMPRIN = "Guilherme Mamprin"
HENRIQUE_ARAKAKI = "Henrique Arakaki"
IURY_ROGER = "Iury Roger"
JAQUELINE_MORAIS = "Jaqueline Morais"
JESSICA_FERNANDES = "Jéssica Fernandes"
JOHN_TOMIZUKA = "John Tomizuka"
JONATAS_COSTA = "Jônatas Costa"
KIRSTEN_AUSTIN = "Kirsten Austin"
LEANDRO_BLANC = "Leandro Blanc"
LEONARDO_COSTA = "Leonardo Costa"
LETICIA_FONSECA = "Letícia Fonseca"
LETICIA_RODRIGUES = "Leticia Rodrigues"
LUCAS_COELHO = "Lucas Coelho"
LUCAS_FIGUEIREDO = "Lucas Figueiredo"
LUCAS_BATISTA = "Lucas Batista"
MARCELO_RISSE = "Marcelo Risse"
MARCELO_GOTO = "Marcelo Goto"
MARCELO_MONTANHER = "Marcelo Montanher"
MAUREEN_MILLER = "Maureen Miller"
MAURICIO_UEHARA = "Mauricio Uehara"
MAX_SOUZA = "Max Souza"
PEDRO_LEAO = "Pedro Leão"
PEDRO_MATSUMOTO = "Pedro Matsumoto"
RAFAEL_PEREIRA = "Rafael Pereira"
RAPHAEL_PETEGROSSO = "Raphael Petegrosso"
RAPHAEL_VINHAS = "Raphael Vinhas"
RENATO_TANO = "Renato Tano"
RODRIGO_SERRADURA = "Rodrigo Serradura"
SAMUEL_CATALANO = "Samuel  Catalano"
STEFANO_SERAVALLI = "Stefano Seravalli"
THIAGO_WATANABE = "Thiago Watanabe"
THIAGO_OLIVEIRA = "Thiago Oliveira"
TUANNY_MARTINS = "Tuanny Martins"
VANESSA_YUMI = "Vanessa Yumi"
VITOR_NAVARRO = "Vitor Navarro"
PRO_120 = 'Pro 120'

LAB_IN_HANDS = 'Lab in Hands'
WEBMOTORS = 'WebMotors'
WEBMOTORS_FASE_2 = 'WebMotors fase 2'
MERCK = 'Merck'
CANAL_DA_PECA = 'Canal da peça'
MARKETPLACE_INTERNCIONAL_MSITES = 'CNova - Marketplace interncional (mSites)'
PONTO_FRIO_MSITE = 'Ponto Frio mSite'
MARKETPLACE_INTERNCIONAL_IOS_ANDROID = 'CNova - Marketplace interncional (iOS/Android)'
RAIA = 'Raia'
RAIA_FASE_2 = 'Raia fase 2'
STARBUCKS = 'Starbucks'
EMS_IOS9 = 'EMS iOS9'
PANELINHA = 'Panelinha'
MARSH_ANDROID = 'Marsh Android'

getProjectId = (projectName, projectData) ->

  filtered = projectData.filter (data) ->
    if data.name == projectName
      return true
    else
      return false

  return filtered[0]._id

getEmployeeId = (employeeName, employeeData) ->

  filtered = employeeData.filter (data) ->
    if data.name == employeeName
      return true
    else
      return false

  return filtered[0]._id

createProject = (project_id, projectsData, employee_id, employeesData, iniDate, endDate, realAllocation) ->
  projetc=
    project_id: getProjectId(project_id, projectsData)
    employee_id: getEmployeeId(employee_id, employeesData)
    startDate: Date.parse(iniDate)
    endDate: Date.parse(endDate)
    realAllocation: realAllocation
  return projetc

getAllocations = (projectsData, employeesData) ->

  allocations = []

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

  WEEK1_INI = "/2/2016"
  WEEK1_END = "/8/2016"
  WEEK2_INI = "/9/2016"
  WEEK2_END = "/16/2016"
  WEEK3_INI = "/17/2016"
  WEEK3_END = "/24/2016"
  WEEK4_INI = "/25/2016"
  WEEK4_END = "/31/2016"

  PRO_120_MARCELO_RISSE = createProject(PRO_120, projectsData, MARCELO_RISSE, employeesData, JAN + WEEK3_INI, JAN + WEEK4_END, true)
  allocations.push { query: null, document: PRO_120_MARCELO_RISSE }

  LAB_IN_HANDS_ALEXANDRE_FUJITA = createProject(LAB_IN_HANDS, projectsData, ALEXANDRE_FUGITA, employeesData, JAN + WEEK1_INI, JAN + WEEK4_END, true)
  allocations.push { query: null, document: LAB_IN_HANDS_ALEXANDRE_FUJITA }

  WEBMOTORS_VITOR_NAVARRO = createProject(WEBMOTORS, projectsData, VITOR_NAVARRO, employeesData, JAN + WEEK1_INI, JAN + WEEK2_END, true)
  allocations.push { query: null, document: WEBMOTORS_VITOR_NAVARRO }

  MERCK_VITOR_NAVARRO = createProject(MERCK, projectsData, VITOR_NAVARRO, employeesData, JAN + WEEK3_INI, FEB + WEEK4_END, true)
  allocations.push { query: null, document: MERCK_VITOR_NAVARRO }

  CANAL_DA_PECA_THIAGO_WATANABE = createProject(CANAL_DA_PECA, projectsData, THIAGO_WATANABE, employeesData, JAN + WEEK1_INI, JAN + WEEK1_END, true)
  allocations.push { query: null, document: CANAL_DA_PECA_THIAGO_WATANABE }

  MARKETPLACE_INTERNCIONAL_MSITES_THIAGO_WATANABE = createProject(MARKETPLACE_INTERNCIONAL_MSITES, projectsData, THIAGO_WATANABE, employeesData, JAN + WEEK2_INI, FEB + WEEK4_END, true)
  allocations.push { query: null, document: MARKETPLACE_INTERNCIONAL_MSITES_THIAGO_WATANABE }

  PONTO_FRIO_MSITE_DANIEL_BARRETO = createProject(PONTO_FRIO_MSITE, projectsData, DANIEL_BARRETO, employeesData, JAN + WEEK1_INI, JAN + WEEK2_END, true)
  allocations.push { query: null, document: PONTO_FRIO_MSITE_DANIEL_BARRETO }

  LAB_IN_HANDS_DANIEL_BARRETO = createProject(LAB_IN_HANDS, projectsData, DANIEL_BARRETO, employeesData, JAN + WEEK3_INI, FEB + WEEK1_END, true)
  allocations.push { query: null, document: LAB_IN_HANDS_DANIEL_BARRETO }

  RAIA_FABIO_HIROKI = createProject(RAIA, projectsData, FABIO_HIROKI, employeesData, JAN + WEEK1_INI, JAN + WEEK4_END, true)
  allocations.push { query: null, document: RAIA_FABIO_HIROKI }

  MARKETPLACE_INTERNCIONAL_IOS_ANDROID_FABIO_HIROKI = createProject(MARKETPLACE_INTERNCIONAL_IOS_ANDROID, projectsData, FABIO_HIROKI, employeesData, FEB + WEEK1_INI, MAR + WEEK3_END, true)
  allocations.push { query: null, document: MARKETPLACE_INTERNCIONAL_IOS_ANDROID_FABIO_HIROKI }

  LAB_IN_HANDS_THIAGO_OLIVEIRA = createProject(LAB_IN_HANDS, projectsData, THIAGO_OLIVEIRA, employeesData, JAN + WEEK1_INI, JAN + WEEK2_END, true)
  allocations.push { query: null, document: LAB_IN_HANDS_THIAGO_OLIVEIRA }

  STARBUCKS_THIAGO_OLIVEIRA = createProject(STARBUCKS, projectsData, THIAGO_OLIVEIRA, employeesData, JAN + WEEK3_INI, FEB + WEEK1_END, true)
  allocations.push { query: null, document: STARBUCKS_THIAGO_OLIVEIRA }

  MARKETPLACE_INTERNCIONAL_MSITES_GUILHERME_MAMPRIN = createProject(MARKETPLACE_INTERNCIONAL_MSITES, projectsData, GUILHERME_MAMPRIN, employeesData, JAN + WEEK1_INI, FEB + WEEK3_END, true)
  allocations.push { query: null, document: MARKETPLACE_INTERNCIONAL_MSITES_GUILHERME_MAMPRIN }

  PRO_120_JONATAS_COSTA = createProject(PRO_120, projectsData, JONATAS_COSTA, employeesData, JAN + WEEK1_INI, FEB + WEEK3_END, true)
  allocations.push { query: null, document: PRO_120_JONATAS_COSTA }

  PRO_120_LETICIA_RODRIGUES = createProject(PRO_120, projectsData, LETICIA_RODRIGUES, employeesData, JAN + WEEK1_INI, FEB + WEEK3_END, true)
  allocations.push { query: null, document: PRO_120_LETICIA_RODRIGUES }

  LAB_IN_HANDS_LUCAS_BATISTA = createProject(LAB_IN_HANDS, projectsData, LUCAS_BATISTA, employeesData, JAN + WEEK1_INI, JAN + WEEK4_END, true)
  allocations.push { query: null, document: LAB_IN_HANDS_LUCAS_BATISTA }

  MARKETPLACE_INTERNCIONAL_IOS_ANDROID_LUCAS_BATISTA = createProject(MARKETPLACE_INTERNCIONAL_IOS_ANDROID, projectsData, LUCAS_BATISTA, employeesData, FEB + WEEK1_INI, MAR + WEEK3_END, true)
  allocations.push { query: null, document: MARKETPLACE_INTERNCIONAL_IOS_ANDROID_LUCAS_BATISTA }

  STARBUCKS_PEDRO_MATSUMOTO = createProject(STARBUCKS, projectsData, PEDRO_MATSUMOTO, employeesData, JAN + WEEK1_INI, FEB + WEEK1_END, true)
  allocations.push { query: null, document: STARBUCKS_PEDRO_MATSUMOTO }

  RAIA_STEFANO_SERAVALLI = createProject(RAIA, projectsData, STEFANO_SERAVALLI, employeesData, JAN + WEEK1_INI, JAN + WEEK4_END, true)
  allocations.push { query: null, document: RAIA_STEFANO_SERAVALLI }

  console.log JSON.stringify allocations

  return allocations

sync = (db, data_handling) ->

  db.Allocation.dropCollection (err, data) ->

    db.Employee.find null, (err, employees) ->

      db.Project.find null, (err, projects) ->

        db.Allocation.bulkSaveOrUpdate getAllocations(projects, employees), (err, data) ->

          data_handling.close()

sync helper.db, helper.data_handling

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

getAllocations = (projectsData, employeesData) ->

  allocations = []

  LAB_IN_HANDS_FUGITA=
    project_id: getProjectId(LAB_IN_HANDS, projectsData)
    employee_id: getEmployeeId(ALEXANDRE_FUGITA, employeesData)
    startDate: Date.parse("1/1/2016")
    endDate: Date.parse("1/31/2016")
    realAllocation: true

  allocations.push { query: null, document: LAB_IN_HANDS_FUGITA }

  console.log JSON.stringify allocations

  return allocations

sync = (db, data_handling) ->

  db.Allocation.dropCollection (err, data) ->

    db.Employee.find null, (err, employees) ->

      db.Project.find null, (err, projects) ->

        db.Allocation.bulkSaveOrUpdate getAllocations(projects, employees), (err, data) ->

          data_handling.close()

sync helper.db, helper.data_handling

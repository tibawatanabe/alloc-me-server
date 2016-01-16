require('rootpath')()
helper = require('src/jobs/jobs-helper')()
_ = require ('lodash')

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

  return _.map technologiesNames, (techName) ->
    return techName

getEmployees = (technologies) ->

  employees = []
  employees.push { query: null, document: {name: 'Alexandre Fugita', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Alinne Hanako', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Ana Maranini', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'André Kanayama', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'André Sales', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Andrea Marx', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Arthur Fonseca', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Daniel Nakasato', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Daniel Barreto', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Danilo Toledo', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Deromir Neves', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Edmar Miyake', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Eidi Takahashi', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Erica Urushibata', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Fábio Hiroki', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Felipe Sabino', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Filipe Lima', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Filipe Pereira', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Flavio Mello', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Gabriela Marques', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'George Chaves', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Greg Milani', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Guilherme Hashioka', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Guilherme Mamprin', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Henrique Arakaki', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Iury Roger', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Jaqueline Morais', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Jéssica Fernandes', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'John Tomizuka', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Jônatas Costa', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Kirsten Austin', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Leandro Blanc', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Leonardo Costa', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Letícia Fonseca', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Leticia Rodrigues', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Lucas Coelho', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Lucas Figueiredo', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Lucas Batista', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Marcelo Risse', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Marcelo Goto', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Marcelo Montanher', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Maureen Miller', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Mauricio Uehara', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Max Souza', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Pedro Leão', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Pedro Matsumoto', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Rafael Pereira', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Raphael Petegrosso', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Raphael Vinhas', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Renato Tano', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Rodrigo Serradura', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Samuel Catalano', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Stefano Seravalli', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Thiago Watanabe', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Thiago Oliveira', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Tuanny Martins', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Vanessa Yumi', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }
  employees.push { query: null, document: {name: 'Vitor Navarro', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }

  console.log JSON.stringify(employees)

  return technologies

sync = (db, data_handling) ->

  db.Employee.dropCollection (err, data) ->

    db.Technology.find null, (err, technologies) ->

      # console.log technologies

      getEmployees(technologies)

      # db.Employee.bulkSaveOrUpdate getEmployees(technologies), (err, data) ->

      data_handling.close()

sync helper.db, helper.data_handling

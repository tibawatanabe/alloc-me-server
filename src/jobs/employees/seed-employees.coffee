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

getArrayOfTechnologiesIds = (technologiesNames,  technologiesData) ->

  arrIds = _.map technologiesNames, (techName) ->
    filtered = technologiesData.filter (techData) ->
      if techData.name == techName
        return true
      else
        return false

    return filtered[0]._id

  return arrIds


getEmployees = (technologies) ->

  employees = []
  employees.push { query: null, document: {name: 'Alexandre Fugita', imgUrl:'https://avatars1.githubusercontent.com/u/1382069?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_BACK_END, IOS_FRONT_END, ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Alinne Hanako', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Ana Maranini', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'André Kanayama', imgUrl:'https://avatars1.githubusercontent.com/u/1382069?v=3&s=400', technologies: getArrayOfTechnologiesIds([NODE, WP_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'André Sales', imgUrl:'https://avatars1.githubusercontent.com/u/10684153?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Andrea Marx', imgUrl:'https://avatars1.githubusercontent.com/u/116326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Arthur Fonseca', imgUrl:'https://avatars1.githubusercontent.com/u/621603?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, ROR], technologies) }  }

  employees.push { query: null, document: {name: 'Daniel Nakasato', imgUrl:'https://avatars1.githubusercontent.com/u/5321952?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR], technologies) }  }

  employees.push { query: null, document: {name: 'Daniel Barreto', imgUrl:'https://avatars1.githubusercontent.com/u/2193703?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Danilo Toledo', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Deromir Neves', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([NODE, IOS_BACK_END, ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Edmar Miyake', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, WP_BACK_END, WP_FRONT_END, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Eidi Takahashi', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, ROR], technologies) }  }

  employees.push { query: null, document: {name: 'Erica Urushibata', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Fábio Hiroki', imgUrl:'https://avatars1.githubusercontent.com/u/670057?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, IOS_BACK_END, NODE], technologies) }  }

  employees.push { query: null, document: {name: 'Felipe Sabino', imgUrl:'https://avatars1.githubusercontent.com/u/700480?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, WP_FRONT_END, WP_BACK_END, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Filipe Lima', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Filipe Pereira', imgUrl:'https://avatars1.githubusercontent.com/u/229183?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Flavio Mello', imgUrl:'https://avatars1.githubusercontent.com/u/2513676?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Gabriela Marques', imgUrl:'https://avatars1.githubusercontent.com/u/1699956?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'George Chaves', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Greg Milani', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Guilherme Hashioka', imgUrl:'https://avatars1.githubusercontent.com/u/884725?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_FRONT_END, ANDROID_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Guilherme Mamprin', imgUrl:'https://avatars1.githubusercontent.com/u/7849116?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Henrique Arakaki', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Iury Roger', imgUrl:'https://avatars1.githubusercontent.com/u/2839084?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_FRONT_END, ANDROID_FRONT_END, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Jaqueline Morais', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Jéssica Fernandes', imgUrl:'https://avatars1.githubusercontent.com/u/7630957?v=3&s=400', technologies: getArrayOfTechnologiesIds([NODE, ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'John Tomizuka', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Jônatas Costa', imgUrl:'https://avatars1.githubusercontent.com/u/16124879?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Kirsten Austin', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Leandro Blanc', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Leonardo Costa', imgUrl:'https://avatars1.githubusercontent.com/u/5013258?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Letícia Fonseca', imgUrl:'https://avatars1.githubusercontent.com/u/5271662?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_FRONT_END, ANDROID_FRONT_END, ANDROID_BACK_END, IOS_BACK_END, ROR], technologies) }  }

  employees.push { query: null, document: {name: 'Leticia Rodrigues', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Lucas Coelho', imgUrl:'https://avatars1.githubusercontent.com/u/6604486?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, WP_BACK_END, NODE], technologies) }  }

  employees.push { query: null, document: {name: 'Lucas Figueiredo', imgUrl:'https://avatars1.githubusercontent.com/u/4432697?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Lucas Batista', imgUrl:'https://avatars1.githubusercontent.com/u/1630028?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_BACK_END, ANDROID_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Marcelo Risse', imgUrl:'https://avatars1.githubusercontent.com/u/3604271?v=3&s=400', technologies: getArrayOfTechnologiesIds([NODE, ANGULAR, ANDROID_BACK_END, IOS_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Marcelo Goto', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_FRONT_END, IOS_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Marcelo Montanher', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, IOS_BACK_END, WP_BACK_END, ANDROID_FRONT_END, IOS_FRONT_END, WP_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Maureen Miller', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Mauricio Uehara', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Max Souza', imgUrl:'https://avatars1.githubusercontent.com/u/1657704?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, IOS_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Pedro Leão', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Pedro Matsumoto', imgUrl:'https://avatars1.githubusercontent.com/u/11282245?v=3&s=400', technologies: getArrayOfTechnologiesIds([WP_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Rafael Pereira', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Raphael Petegrosso', imgUrl:'https://avatars1.githubusercontent.com/u/412091?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, WP_BACK_END, WP_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Raphael Vinhas', imgUrl:'https://avatars1.githubusercontent.com/u/6536512?v=3&s=400', technologies: getArrayOfTechnologiesIds([WP_BACK_END, WP_FRONT_END, ANDROID_FRONT_END, ANDROID_BACK_END, IOS_BACK_END, IOS_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Renato Tano', imgUrl:'https://avatars1.githubusercontent.com/u/700483?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, NODE, ROR, ANGULAR, WP_BACK_END, WP_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Rodrigo Serradura', imgUrl:'https://avatars1.githubusercontent.com/u/305364?v=3&s=400', technologies: getArrayOfTechnologiesIds([ROR], technologies) }  }

  employees.push { query: null, document: {name: 'Samuel Catalano', imgUrl:'https://avatars1.githubusercontent.com/u/2388960?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, ROR, IOS_FRONT_END, IOS_BACK_END], technologies) }  }

  employees.push { query: null, document: {name: 'Stefano Seravalli', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([IOS_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Thiago Watanabe', imgUrl:'https://avatars1.githubusercontent.com/u/8324586?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, ANGULAR], technologies) }  }

  employees.push { query: null, document: {name: 'Thiago Oliveira', imgUrl:'https://avatars1.githubusercontent.com/u/4991904?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END], technologies) }  }

  employees.push { query: null, document: {name: 'Tuanny Martins', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Vanessa Yumi', imgUrl:'https://avatars1.githubusercontent.com/u/16326709?v=3&s=400', technologies: getArrayOfTechnologiesIds([], technologies) }  }

  employees.push { query: null, document: {name: 'Vitor Navarro', imgUrl:'https://avatars1.githubusercontent.com/u/564603?v=3&s=400', technologies: getArrayOfTechnologiesIds([ANDROID_BACK_END, ANDROID_FRONT_END, IOS_BACK_END, IOS_FRONT_END, WP_FRONT_END, WP_BACK_END], technologies) }  }


  return employees

sync = (db, data_handling) ->

  db.Employee.dropCollection (err, data) ->

    db.Technology.find null, (err, technologies) ->

      db.Employee.bulkSaveOrUpdate getEmployees(technologies), (err, data) ->

        data_handling.close()

sync helper.db, helper.data_handling

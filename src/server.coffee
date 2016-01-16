app = {}
app.packageJson = require('../package.json')
app.express = require('express')
app.bodyParser = require('body-parser')
app.dataHandling = require('node-data-handling')()
app.jsonschema = require('jsonschema')
app.validator = new app.jsonschema.Validator()
app.configHelper = require('tq1-helpers').config_helper
app._ = require('lodash')
app.async = require('async')

core = {}

# Config
core = {}
core.config = require('src/core/config/config') app.configHelper, app.packageJson

# Logs
require('tq1-logger')(core.config.loggerOptions, console)

# Common Module
common = {}
common.jsonSchemaValidator = require('src/modules/common/json-schema-validator') app.validator

# Http Module
core.http = {}
core.http.mixin = require('src/core/http/mixin.coffee')()
core.http.responseBuilder = require('src/core/http/response-builder.coffee') common.jsonSchemaValidator



# Common middlewares
common.middlewares = {}
common.middlewares.mobileRequestValidator = require('src/modules/common/middlewares/mobile-request-validator-middleware') core.http.responseBuilder, common.jsonSchemaValidator

# Database
db = {}
db.schemas = {}
db.schemas.employee = require('src/db/schemas/employee')
db.schemas.technology = require('src/db/schemas/technology')
db.schemas.allocation = require('src/db/schemas/allocation')
db.schemas.project = require('src/db/schemas/project')
db.db = require('src/db/db') app.dataHandling, db.schemas

# Controllers
allocations = {}
allocations.controllers = {}
allocations.controllers.getAll = require('src/modules/allocations/allocations-controller.coffee') core.http, db.db, app._, app.async

# Routes
routes = {}
routes.routes = require('src/routes/routes') app.express, core.config, routes
routes.v1 = {}
routes.v1.allocations = require('src/routes/v1/allocation') allocations

module.exports = (callback) ->
  return require('src/app') app.express, app.bodyParser, core.config, routes.routes, callback

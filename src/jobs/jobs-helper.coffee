app = {}
app.packageJson = require('../../package.json')
app.express = require('express')
app.bodyParser = require('body-parser')
app.dataHandling = require('node-data-handling')()
app.jsonschema = require('jsonschema')
app.validator = new app.jsonschema.Validator()
app.configHelper = require('tq1-helpers').config_helper
app._ = require('lodash')

core = {}

# Config
core = {}
core.config = require('src/core/config/config') app.configHelper, app.packageJson

# Http Module
core.http = {}
core.http.mixin = require('src/core/http/mixin.coffee')()
# core.http.responseBuilder = require('src/core/http/response-builder.coffee') common.jsonSchemaValidator

# Common middlewares
# common = {}
# common.middlewares = {}
# common.middlewares.mobileRequestValidator = require('src/modules/common/middlewares/mobile-request-validator-middleware') core.http.responseBuilder, common.jsonSchemaValidator

# Database
db = {}
db.schemas = {}
db.schemas.employee = require('src/db/schemas/employee')
db.schemas.technology = require('src/db/schemas/technology')
db.db = require('src/db/db') app.dataHandling, db.schemas


module.exports = ->
  _: app._
  http: core.http
  # schemas: schemas
  db: db.db
  data_handling: app.dataHandling

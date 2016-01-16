module.exports = (mongoose, mongooseAlias, statics) ->
  class Project
    constructor: (collection) ->
      @schema = new mongoose.Schema
        name: {"type": "string", "default": null}
        technologies: {"type": "array", "default": null}
        employees: {"type": "array", "default": null}
        startDate: {"type": "Date", "default": null},
        endDate: {"type": "Date", "default": null}

      @schema.plugin(mongooseAlias)

      @schema.statics = statics

      return @schema

module.exports = (mongoose, mongooseAlias, statics) ->
  class Allocation
    constructor: (collection) ->
      @schema = new mongoose.Schema
        project_id: {"type": "string", "default": null}
        employee_id: {"type": "string", "default": null}
        startDate: {"type": "Date", "default": null},
        endDate: {"type": "Date", "default": null}

      @schema.plugin(mongooseAlias)

      @schema.statics = statics

      return @schema

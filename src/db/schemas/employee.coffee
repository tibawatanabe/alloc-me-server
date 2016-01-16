module.exports = (mongoose, mongooseAlias, statics) ->
  class Employee
    constructor: (collection) ->
      @schema = new mongoose.Schema
        name: {"type": "string", "default": null},
        technologies: {"type": "array", "default": null}
        unavailable_periods: {"type": "array", "default": null}
        imgUrl: {"type": "string", "default": null},

      @schema.plugin(mongooseAlias)

      @schema.statics = statics

      return @schema

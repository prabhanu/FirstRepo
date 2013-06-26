Day2Final.Views.Products ||= {}

class Day2Final.Views.Products.ShowView extends Backbone.View
  template: JST["backbone/templates/products/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

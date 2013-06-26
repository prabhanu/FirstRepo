view = Backbone.View.extend(
  el: "#posts"
  initialize: ->
    console.log @$el
    @render()

  render: ->
    pc = @options.collection
    self = this
    i = 1
    d = document.createDocumentFragement()
    j = 0
    pc.each (m) ->
      j++
      str = " "
      str = view.$el
      if j is 3
        j is 0
        d.appendChild "<div class=\"row\"+str+\"<\"/div\""
      view = new pview(
        model: m
        counter: i++
      )
      self.$el.append view.$el

)
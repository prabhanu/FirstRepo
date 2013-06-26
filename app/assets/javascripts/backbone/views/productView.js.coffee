class Day2Final.Views.ProductView extends Backbone.View
	template: JST["backbone/templates/viewtemplate"]
	className: "product col span_4"	
	events:
		"click #buy": "change"
	render: =>
		str = this.template(this.model.toJSON())
		this.$el.html(str)
	initialize: =>
		#@model.on "change", @render, this
		@render()

	change: (event) =>
		console.log "urlllllll"
		console.log this
		if @model.attributes.quantity is 0
			alert "OUT OF STOCK"
		else
			@model.attributes.quantity--
			@model.save()
			@render()
		#console.log "hi"+this.model.collection.url2

		quantity = this.model.attributes.quantity
		message = this.model.attributes.id
		if this.options.url2 is "search/"
			$.ajax
				url: "products/search/"
				type: "get"
				data:
					inputData: quantity
					id: message

				success: (res) ->

 				error: ->
					console.error "error!!!!"
		else
			$.ajax
				url: this.options.url2
				type: "get"
				data:
					inputData: quantity
					id: message
				success: (res) ->
				error: ->
					console.error "error!!!!"

		#if condition
			
		#else
		




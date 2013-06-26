class Day2Final.Views.ProductsView extends Backbone.View

	el:'#products'

	_views:[]

	initialize : () =>
		@render()

	render: () =>
		pcs = this.options.collections
		d_all = document.createDocumentFragment()
		console.log pcs
		console.log "heeeeelo"
		#console.log "hi2 length2", pcs.length
		j = 0
		while j < pcs.length
			pc = pcs[j]
			console.log "pc.url2"+pc.url2
			length = pc.length
			d = document.createDocumentFragment()
			length2 = 1
			current_row = undefined
			pc.each (model) =>
				view = new Day2Final.Views.ProductView({model:model,url2:pc.url2})
				if length2 <= length
					if length2 % 3 is 1
						current_row = $('<div class="row">')
						d.appendChild(current_row[0])
						current_row.append(view.$el)
						length2 = length2+1
						#console.log length2
					else
						elem2 = $('<div class="a">').append(view.$el)
						current_row.append elem2[0]
						length2 = length2+1
						#console.log "hi2 length2"
			console.log("last")
			this._views.push(d) 
			this.$el.append(d)
			j++		


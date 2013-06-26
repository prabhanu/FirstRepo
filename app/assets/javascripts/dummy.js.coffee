# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
productModel = Backbone.Model.extend()

produc = new productModel()

produc.url = "products.json"

productList = Backbone.Collection.extend(
  model: productModel
  url:"products.json"
  )

ProducListInstance = new productList()
ProducListInstance.url = "products.json"
ProducListInstance.fetch success: ->
  console.log ProducListInstance

create_view = ->
  console.log "creating view"
  pv = new Day2Final.Views.ProductsView(collections: pcs)

Mypc = new Day2Final.Collections.ProductsCollection()
Mypc.url = "products.json"  
Mypc.url2 = "search/"                     #Bhanu
Mypc.fetch success: console.log "jjj"

Kailashpc = new Day2Final.Collections.ProductsCollection()
Kailashpc.url = "http://10.1.2.29:3000/products.json" #Kailash
Kailashpc.url2 = "http://10.1.2.29:3000/search"
Kailashpc.fetch success: console.log "jjj"

Yadavpc = new Day2Final.Collections.ProductsCollection()
Yadavpc.url = "http://10.1.2.64:3000/products.json" #Rahul Yadav
Yadavpc.fetch success: console.log "jjj"

Kishorepc = new Day2Final.Collections.ProductsCollection()
Kishorepc.url = "http://10.1.2.27:3000/products.json" #Kishore
Kishorepc.fetch success: console.log "jjj"

Hemantpc = new Day2Final.Collections.ProductsCollection()
Hemantpc.url = "http://10.1.2.23:3000/products.json" #Hemant Mundra
Hemantpc.fetch success: console.log "jjj"

Abhijeetpc = new Day2Final.Collections.ProductsCollection()
Abhijeetpc.url = "http://10.1.2.48:3000/products.json" #Abhijeet
Abhijeetpc.url2 = "http://10.1.2.48:3000/products/search"
Abhijeetpc.fetch success: console.log "jjj"

Barjatyapc = new Day2Final.Collections.ProductsCollection()
Barjatyapc.url = "http://10.1.2.49:3000/products.json" #Rahul Barjatya
Barjatyapc.fetch success: console.log "jjj"

pcs = new Array()
pcs[0] = Mypc
pcs[0].url2 = "search/"
pcs[1] = Abhijeetpc
pcs[1].url2 = "http://10.1.2.48:3000/products/search"
console.log pcs
#pcs[2] = Yadavpc;
#pcs[3] = Kishorepc;
#pcs[4] = Hemantpc;
#pcs[5] = Kailashpc;
#pcs[6] = Barjatyapc;
console.log "All data fetched"

success_counter = 0
update_counter = ->
  success_counter++
  console.log success_counter, success_counter is pcs.length
  if success_counter is pcs.length
    console.log "calling create_view"
    create_view()

i = 0

while i < pcs.length
  pcs[i].fetch complete: update_counter
  i++



 






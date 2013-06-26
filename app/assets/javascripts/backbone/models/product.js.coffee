class Day2Final.Models.Product extends Backbone.Model
  paramRoot: 'product'

  defaults:
    name: null
    category_id: null
    price: null
    quantity: null

class Day2Final.Collections.ProductsCollection extends Backbone.Collection
  model: Day2Final.Models.Product
  url: '/products'


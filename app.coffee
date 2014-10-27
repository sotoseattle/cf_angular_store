app = angular.module("gemStore", ["store-directives"])

app.controller "StoreController", ["$http", ($http) ->
  store = this
  store.products = []
  $http.get("/store-products.json").success (data) ->
    store.products = data
]

app.controller "ReviewController", ->
  this.review = {}
  this.addReview = (product) ->
    product.reviews.push(this.review)
    this.review = {}
    return

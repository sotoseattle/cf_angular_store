app = angular.module("store-directives", [])

app.directive "productDescription", ->
  restrict: "E",
  templateUrl: "product-description.html"

app.directive "productReviews", ->
  restrict: "E",
  templateUrl: "product-reviews.html"

app.directive "productSpecs", ->
  restrict:"A",
  templateUrl: "product-specs.html"

app.directive "productTabs", ->
  restrict: "E",
  templateUrl: "product-tabs.html",
  controller: ->
    this.tab = 1
    this.isSet = (checkTab) ->
      this.tab == checkTab
    this.setTab = (activeTab) ->
      this.tab = activeTab
  controllerAs: "tab"

app.directive "productGallery", ->
  restrict: "E",
  templateUrl: "product-gallery.html",
  controller: ->
    this.current = 0
    this.setCurrent = (imageNumber) ->
      this.current = imageNumber || 0
  controllerAs: "gallery"

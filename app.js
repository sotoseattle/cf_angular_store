(function (argument) {
  var app = angular.module('store', []);

  app.controller('StoreController', function () {
    this.products = gems
  })

  var gems = [
  {
    name: 'Dodecahedron',
    price: 2,
    description: ". . .",
    canPurchase: true
  },
  {
    name: 'Pentacahedron',
    price: 5.95,
    description: ". . .",
    canPurchase: false
  }
  ]
})();

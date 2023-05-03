import 'package:flutter/material.dart';

import 'product.dart';

class Cart extends ChangeNotifier {
  // list of product for sale
  List<Product> productShop = [
    Product(
        name: 'Vapormax',
        price: '120',
        description: 'Feels like air',
        imagePath: 'lib/images/vapor.png'),
    Product(
        name: 'AirT',
        price: '20',
        description: 'Gives you chills in summer',
        imagePath: 'lib/images/tshirt.png'),
    Product(
        name: 'Iphone',
        price: '999',
        description: 'Best ever',
        imagePath: 'lib/images/iphun.jpg'),
    Product(
        name: 'Ultraboost',
        price: '150',
        description: 'Boosts your sprint',
        imagePath: 'lib/images/adidas.png')
  ];
  //List of product is user's cart
  List<Product> userCart = [];

  List<Product> getProductlist() {
    return productShop;
  }
  List<Product> getUserCart() {
    return userCart;
  }
  //add items to cart
 void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
 }

  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}

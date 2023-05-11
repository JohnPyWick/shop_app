import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/product.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Total:',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () => {
                      // Add your desired functionality here
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                        Colors
                            .black87, // Change the color to a shade of black
                      ),
                    ),
                    child: const Text(
                      'Order Now',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Product individualProduct = value.getUserCart()[index];

                  return CartItem(
                    product: individualProduct,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
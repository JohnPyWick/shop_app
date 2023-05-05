import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/product_tile.dart';
import '../models/cart.dart';
import '../models/product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addProductToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addItemToCart(product);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Added'),
        content: Text('Check your Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                  ),
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search),
                      Text('Search'),
                    ],
                  )
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Product product = value.getProductlist()[index];
                      return ProductTile(
                        product: product,
                        onTap: () => addProductToCart(product),
                      );
                    },
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Divider(color: Colors.white))
              ],
            ));
  }
}

//package
import 'package:flutter/material.dart';
import 'package:pet_app/providers/cartProvider.dart';
import 'package:provider/provider.dart';

class MarketCard extends StatelessWidget {
  final String name, image, description, id;
  final int price, index;
  MarketCard({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return index % 2 == 0
        ? Stack(
            children: <Widget>[
              Container(
                height: 300,
                color: Colors.transparent,
                child: Align(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 250,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              height: 230,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const SizedBox(height: 30),
                                  const Text(
                                    'New Arrival',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    description,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Colors.blueAccent,
                                          Colors.blue,
                                          Colors.blueAccent,
                                          Colors.blueAccent,
                                          Colors.blue,
                                          Colors.blueAccent,
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$price ₺',
                                        style: const TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 25,
                top: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.amber[600],
                  foregroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      provider.addToCart(
                        id,
                        name,
                        price.toDouble(),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () => provider.removeFromCart(
                              id,
                              name,
                              price.toDouble(),
                              provider.CartList.values
                                  .toList()[provider.CartList.values
                                      .toList()
                                      .indexWhere(
                                        (element) => element.id == id,
                                      )]
                                  .quantity,
                            ),
                          ),
                          content: Text(
                            'Item Added To Cart',
                            style: Theme.of(context)
                                .snackBarTheme
                                .contentTextStyle,
                          ),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        : Stack(
            children: <Widget>[
              Container(
                height: 300,
                color: Colors.transparent,
                child: Align(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 250,
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const SizedBox(height: 30),
                                  const Text(
                                    'New Arrival',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    description,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                  const SizedBox(height: 5),
                                  Container(
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Colors.indigoAccent,
                                          // Colors.blueAccent,
                                          // Colors.indigoAccent,
                                          Colors.blue,
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$price ₺',
                                        style: const TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              width: 200,
                              height: 230,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.amber[600],
                  foregroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      provider.addToCart(
                        id,
                        name,
                        price.toDouble(),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () => provider.removeFromCart(
                              id,
                              name,
                              price.toDouble(),
                              provider.CartList.values
                                  .toList()[provider.CartList.values
                                      .toList()
                                      .indexWhere(
                                        (element) => element.id == id,
                                      )]
                                  .quantity,
                            ),
                          ),
                          content: Text(
                            'Item Added To Cart',
                            style: Theme.of(context)
                                .snackBarTheme
                                .contentTextStyle,
                          ),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
  }
}

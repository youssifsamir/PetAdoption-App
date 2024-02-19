//packages
import 'package:flutter/material.dart';

class ProductObj {
  final String id, name, image, description;
  final int price;

  ProductObj({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}

class MarketProvider with ChangeNotifier {
  final List<ProductObj> _products = [
    ProductObj(
      id: '5',
      name: 'Glass\nBottle',
      price: 150,
      image: './assets/images/item3.jpeg',
      description: 'For cold and hot beverages.',
    ),
    ProductObj(
      id: '2',
      name: 'Tote Bag',
      price: 100,
      image: './assets/images/item2.jpeg',
      description: 'Fabric dog styled hand bag.',
    ),
    ProductObj(
      id: '3',
      name: 'Green Hat',
      price: 250,
      image: './assets/images/item4.jpeg',
      description: 'Polyster unisex green colored hat.',
    ),
    ProductObj(
      id: '4',
      name: 'Brown Hat',
      price: 250,
      image: './assets/images/item1.jpeg',
      description: 'Polyster unisex brown colored hat.',
    ),
    ProductObj(
      id: '6',
      name: 'Vanilla Scented Candle',
      price: 129,
      image: './assets/images/jar.jpeg',
      description: 'Mini-glass scented vanillia candle.',
    ),
    ProductObj(
      id: '1',
      name: 'White T-Shirt',
      price: 300,
      image: './assets/images/item5.jpeg',
      description: 'Cotton white t-shirt with curved neck.',
    ),
  ];

  final List<ProductObj> _prizes = [
    ProductObj(
      id: '5',
      name: 'Glass\nBottle',
      price: 150,
      image: './assets/images/item3.jpeg',
      description: 'For cold and hot beverages.',
    ),
    ProductObj(
      id: '3',
      name: 'Green Hat',
      price: 250,
      image: './assets/images/item4.jpeg',
      description: 'Polyster unisex green colored hat.',
    ),
    ProductObj(
      id: '2',
      name: 'Tote Bag',
      price: 100,
      image: './assets/images/item2.jpeg',
      description: 'Fabric dog styled hand bag.',
    ),
  ];

  List<ProductObj> get Prizes {
    return [..._prizes];
  }

  List<ProductObj> get Products {
    return [..._products];
  }
}

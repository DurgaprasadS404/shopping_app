import 'package:flutter/foundation.dart';

class Product {
  const Product({
    @required this.name,
    @required this.price,
    @required this.imageUri,
    @required this.rating,

  })  :
        assert(name != null),
        assert(price != null),
        assert(imageUri != null),
        assert(rating != null);

  final String name;
  final double price;
  final String imageUri;
  final double rating;

}
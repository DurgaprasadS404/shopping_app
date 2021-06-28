import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Category {
  const Category({
    @required this.name,
    @required this.icon,

  })  :
        assert(name != null),
        assert(icon != null);

  final String name;
  final IconData icon;

}
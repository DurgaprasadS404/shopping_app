import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/category.dart';
import 'package:shopping_app/domain/home/product.dart';
import 'package:shopping_app/presentation/core/constants/theme_colors.dart';
import 'package:shopping_app/presentation/home/widgets/category_list.dart';
import 'package:shopping_app/presentation/home/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> categories = [
    Category(name: "Armchair", icon: (Icons.wheelchair_pickup)),
    Category(name: "Bed", icon: (Icons.king_bed_outlined)),
    Category(name: "Lamp", icon: (Icons.lightbulb_outline)),
  ];

  final List<Product> products = [
    Product(name: "Tortor Chair", price: 256.00, imageUri: "https://freepngimg.com/thumb/chair/10-2-chair-free-png-image.png", rating: 4.5),
    Product(name: "Morbi Chair", price: 284.00, imageUri: "https://freepngimg.com/thumb/chair/1-2-chair-png-picture.png", rating: 4.8),
    Product(name: "Pretium Chair", price: 232.00, imageUri: "https://freepngimg.com/thumb/chair/2-2-chair-download-png.png", rating: 4.3),
    Product(name: "Blandit Chair", price: 224.00, imageUri: "https://freepngimg.com/thumb/chair/3-2-chair-transparent.png", rating: 4.1),
    Product(name: "Tortor Chair", price: 256.00, imageUri: "https://freepngimg.com/thumb/chair/10-2-chair-free-png-image.png", rating: 4.5),
    Product(name: "Morbi Chair", price: 284.00, imageUri: "https://freepngimg.com/thumb/chair/1-2-chair-png-picture.png", rating: 4.8),
    Product(name: "Pretium Chair", price: 232.00, imageUri: "https://freepngimg.com/thumb/chair/2-2-chair-download-png.png", rating: 4.3),
    Product(name: "Blandit Chair", price: 224.00, imageUri: "https://freepngimg.com/thumb/chair/3-2-chair-transparent.png", rating: 4.1),
  ];

  String _chosenFilter = "Most popular";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:32.0,right:32.0,top:32.0,bottom:24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Rated",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: ThemeColors.primaryColor),),
                IconButton(icon: Icon(Icons.filter_list,size: 30,color: ThemeColors.primaryColor), onPressed: (){}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:32.0),
            child: Container(height:65,child: HomeCategoryList(categories: categories,)),
          ),
          Padding(
            padding: const EdgeInsets.only(left:32.0,right:32.0,top:32.0,bottom:0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${products.length} products",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff191B24).withOpacity(0.6)),),
                DropdownButton<String>(
                  focusColor:Colors.white,
                  value: _chosenFilter,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor:Colors.black,
                  items: <String>[
                    'Most popular',
                    'Lowest price',
                    'Highest price',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style:TextStyle(color:Colors.black),),
                    );
                  }).toList(),
                  onChanged: (String value) {
                    setState(() {
                      _chosenFilter = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(child: HomeProductList(products: products,)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/product.dart';
import 'package:shopping_app/presentation/product/widgets/info_card.dart';

class ProductExpanded extends StatefulWidget {
  final Product product;
  @override
  _ProductExpandedState createState() => _ProductExpandedState();
  ProductExpanded(this.product);
}

class _ProductExpandedState extends State<ProductExpanded> {
  String mockImageLink =
      "https://images.unsplash.com/photo-1592078615290-033ee584e267?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(mockImageLink),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:32.0),
                child: Card(
                  color: Color(0xff47474D).withOpacity(0.57),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.camera_alt_outlined,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text("Point your camera at a furniture",style: TextStyle(fontSize: 18,color:Colors.white,),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Card(
                  color: Color(0xff47474D).withOpacity(0.57),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,right: 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [ ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close, color: Colors.black),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(
                          ),
                          padding: EdgeInsets.all(10),
                          primary: Colors.white, // <-- Button color
                        ),
                      ),
                        Text(widget.product.name+ ": 88.47%",style: TextStyle(fontSize: 18,color:Colors.white,),),],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ProductInfoCard(widget.product),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/product.dart';

class ProductInfoCard extends StatelessWidget {
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff47474D).withOpacity(0.57),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 75,
              width: 75,
              child: Image.network(product.imageUri),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.name,style: TextStyle(fontSize: 18,color:Colors.white),),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: Color(0xffE0BC1D),size: 20,),
                        Text( product.rating.toString(), style: TextStyle(fontSize: 20,color:Colors.white,),)
                      ],
                    ),
                    SizedBox(width: 16,),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: '\$', style: TextStyle(fontSize: 20,color: Color(0xffE0BC1D))),
                          TextSpan(text: product.price.toString(), style: TextStyle(fontSize: 20,color:Colors.white,),),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.keyboard_arrow_right, color: Colors.black),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(
                ),
                padding: EdgeInsets.all(10),
                primary: Colors.white, // <-- Button color
              ),
            )
          ],
        ),
      ),
    );
  }

  ProductInfoCard(this.product);
}

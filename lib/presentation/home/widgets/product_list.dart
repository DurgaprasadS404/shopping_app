import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/product.dart';
import 'package:shopping_app/presentation/core/constants/theme_colors.dart';
import 'package:shopping_app/presentation/product/product.dart';
import 'package:shopping_app/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class HomeProductList extends StatefulWidget {
  final List<Product> products;
  HomeProductList({@required this.products});

  @override
  _HomeProductListState createState() => _HomeProductListState();
}

class _HomeProductListState extends State<HomeProductList> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: widget.products.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return (index%2==0)?GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductExpanded(widget.products[index])),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color:  ThemeColors.inactiveCardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left:24.0,right:24.0,top:24.0,bottom:24.0),
                          child: Column(
                            children: [
                              Image.network(widget.products[index].imageUri),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(widget.products[index].name,style: TextStyle(fontSize: 18,color:Colors.black),),
                                ],
                              ),
                              SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: '\$', style: TextStyle(fontSize: 20,color: Color(0xffE0BC1D))),
                                        TextSpan(text: widget.products[index].price.toString(), style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 16,),

                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Color(0xffE0BC1D),size: 20,),
                                      Text( widget.products[index].rating.toString(), style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ):Container();
                }),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(height: 70,),
                ListView.builder(
                    itemCount: widget.products.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                      return (index%2==1)?GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductExpanded(widget.products[index])),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color:  ThemeColors.inactiveCardColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.only(left:24.0,right:24.0,top:24.0,bottom:24.0),
                              child: Column(
                                children: [
                                  Image.network(widget.products[index].imageUri),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(widget.products[index].name,style: TextStyle(fontSize: 18,color:Colors.black),),
                                    ],
                                  ),
                                  SizedBox(height: 16,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(text: '\$', style: TextStyle(fontSize: 20,color: Color(0xffE0BC1D))),
                                            TextSpan(text: widget.products[index].price.toString(), style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 16,),

                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Color(0xffE0BC1D),size: 20,),
                                          Text( widget.products[index].rating.toString(), style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ):Container();
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

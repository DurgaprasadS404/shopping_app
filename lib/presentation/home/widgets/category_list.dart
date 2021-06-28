import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/category.dart';
import 'package:shopping_app/presentation/core/constants/theme_colors.dart';

class HomeCategoryList extends StatefulWidget {
  final List<Category> categories;
  HomeCategoryList({@required this.categories});

  @override
  _HomeCategoryListState createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
   int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context,index){
      return GestureDetector(
        onTap: (){
          setState(() {
            selectedCategoryIndex = index;
          });
        },
        child: Card(
          color: selectedCategoryIndex == index ? ThemeColors.primaryColor: ThemeColors.inactiveCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.only(left:24.0,right:24.0,top:16.0,bottom:16.0),
            child: Row(
              children: [
                Icon(widget.categories[index].icon,color: selectedCategoryIndex == index ? Colors.white:ThemeColors.primaryColor,),
                SizedBox(width: 16,),
                Text(widget.categories[index].name,style: TextStyle(fontSize: 18,color: selectedCategoryIndex == index ?Colors.white:ThemeColors.primaryColor),),
                ],
            ),
          ),
        ),
      );
    });
  }
}

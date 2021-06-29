import 'package:flutter/material.dart';
import 'package:shopping_app/domain/home/product.dart';
import 'package:shopping_app/presentation/bottom%20tabs/fab_bottom_bar.dart';
import 'package:shopping_app/presentation/core/constants/theme_colors.dart';
import 'package:shopping_app/presentation/home/home_page.dart';
import 'package:shopping_app/presentation/product/product.dart';

class BottomTabPage extends StatefulWidget {
  @override
  _BottomTabPageState createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage>
    with SingleTickerProviderStateMixin {
  PageController _tabController;

  void initState() {
    _tabController = PageController(initialPage: 0);
    super.initState();
  }

  List<Widget> _buildScreens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage()
  ];

  List<FABBottomAppBarItem> _navBarsItems = [
    FABBottomAppBarItem(
      iconData: Icons.home_filled,
    ),
    FABBottomAppBarItem(
      iconData: Icons.search,
    ),
    FABBottomAppBarItem(
      iconData: Icons.settings,
    ),
    FABBottomAppBarItem(
      iconData: Icons.account_circle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FABBottomAppBar(
        color: ThemeColors.inactiveIconColor,
        backgroundColor: Colors.white,
        selectedColor: ThemeColors.activeIconColor,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (index) {
          setState(() {
            _tabController.jumpToPage(index);
          });
        },
        items: _navBarsItems,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FittedBox(
              child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ThemeColors.primaryColor,
            child: Icon(Icons.shopping_bag_outlined),
          ))),
      body: PageView(
        controller: _tabController,
        physics: new NeverScrollableScrollPhysics(),
        children: _buildScreens,
      ),
    );
  }
}

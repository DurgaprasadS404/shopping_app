import 'package:auto_route/auto_route_annotations.dart';
import 'package:shopping_app/presentation/bottom%20tabs/bottom_tab_page.dart';
import 'package:shopping_app/presentation/home/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage),
    MaterialRoute(page: BottomTabPage),
  ],
  generateNavigationHelperExtension: true,
)
class $LocalRouter {
  HomePage homePage;
  BottomTabPage bottomTabPage;
}

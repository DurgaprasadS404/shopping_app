import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:shopping_app/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import 'presentation/core/constants/theme_datas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeDatas.lightThemeData,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ExtendedNavigator(
          router: LocalRouter(),
          initialRoute: Routes.bottomTabPage,
        ),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),    );
  }
}

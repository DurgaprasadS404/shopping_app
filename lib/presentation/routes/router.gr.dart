// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../bottom%20tabs/bottom_tab_page.dart';
import '../home/home_page.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String bottomTabPage = '/bottom-tab-page';
  static const all = <String>{
    homePage,
    bottomTabPage,
  };
}

class LocalRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.bottomTabPage, page: BottomTabPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    BottomTabPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomTabPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension LocalRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushBottomTabPage() => push<dynamic>(Routes.bottomTabPage);
}

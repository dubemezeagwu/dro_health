import 'package:dro_health/presentation/all_categories_screen.dart';
import 'package:dro_health/presentation/pharmacy_screen.dart';
import 'package:flutter/material.dart';

Route?  generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/pharmacy_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const PharmacyScreen(),
        args: settings.arguments,
      );
    case '/all_categories_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const AllCategoriesScreen(),
        args: settings.arguments,
      );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

PageRoute<dynamic> _getPageRoute({String? routeName, required Widget view, Object? args}) {
  return MaterialPageRoute(
      settings: RouteSettings(name: routeName, arguments: args),
      builder: (context) => view);
}

void routeTo(BuildContext context, Widget view, {bool dialog = false}) {
  Navigator.push<void>(
      context,
      MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => view, fullscreenDialog: dialog));
}

void routeToReplace(BuildContext context, Widget view) {
  Navigator.pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<dynamic>(builder: (BuildContext context) => view),
          (Route<void> route) => false);
}
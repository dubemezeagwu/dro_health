import 'package:dro_health/presentation/community_screen.dart';
import 'package:dro_health/presentation/doctors_screen.dart';
import 'package:dro_health/presentation/home_screen.dart';
import 'package:dro_health/presentation/pharmacy/all_categories_screen.dart';
import 'package:dro_health/presentation/pharmacy/checkout_cart_screen.dart';
import 'package:dro_health/presentation/pharmacy/item_details_screen.dart';
import 'package:dro_health/presentation/pharmacy/pharmacy_screen.dart';
import 'package:dro_health/presentation/profile_screen.dart';
import 'package:dro_health/utils/routes/dashboard.dart';
import 'package:flutter/material.dart';

Route?  generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return _getPageRoute(
        routeName: settings.name,
        view: const Dashboard(),
        args: settings.arguments,
      );
    case '/home_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const HomeScreen(),
        args: settings.arguments,
      );
    case '/doctors_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const DoctorsScreen(),
        args: settings.arguments,
      );
    case '/pharmacy_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const PharmacyScreen(),
        args: settings.arguments,
      );
    case '/community_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const CommunityScreen(),
        args: settings.arguments,
      );
    case '/profile_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const ProfileScreen(),
        args: settings.arguments,
      );
    case '/all_categories_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const AllCategoriesScreen(),
        args: settings.arguments,
      );
    case '/item_details_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const ItemDetailsScreen(item: null),
        args: settings.arguments,
      );
    case '/checkout_cart_screen':
      return _getPageRoute(
        routeName: settings.name,
        view: const CheckoutCartScreen(),
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
import 'package:flutter/material.dart';
import 'package:timber/about_products/cart.dart';
import 'package:timber/about_products/product_detail.dart';
import 'package:timber/auth/sign_up.dart';
import 'package:timber/categories/ind_categories/bed_category.dart';
import 'package:timber/categories/ind_categories/chair_categories.dart';
import 'package:timber/categories/ind_categories/door_categories.dart';
import 'package:timber/categories/ind_categories/sofa_categories.dart';
import 'package:timber/categories/ind_categories/table_categories.dart';
import 'package:timber/categories/ind_categories/window_categories.dart';
import 'package:timber/landing_page/landing_page.dart';
import 'package:timber/landing_page/scroll_categories.dart';
import 'package:timber/auth/log_in.dart';
import 'package:timber/my_homepage.dart';
import 'package:timber/routing/routing_constant.dart';
import 'package:timber/about_products/recent_products.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyHomePageRoute:
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case LogInRoute:
        return MaterialPageRoute(builder: (context) => LogIn());
      case SkipRoute:
        return MaterialPageRoute(builder: (context) => LandingPage());
      case SignUpRoute:
        return MaterialPageRoute(builder: (context) => SignUp());
      case CartRoute:
        return MaterialPageRoute(builder: (context) => Cart());
      case CateRoute:
        return MaterialPageRoute(builder: (context) => RecentProducts());
      case DoorRoute:
        return MaterialPageRoute(builder: (context) => DoorCategories());
      case BedRoute:
        return MaterialPageRoute(builder: (context) => BedCategories());
      case SofaRoute:
        return MaterialPageRoute(builder: (context) => SofaCategories());
      case ChairRoute:
        return MaterialPageRoute(builder: (context) => ChairCategories());
      case TableRoute:
        return MaterialPageRoute(builder: (context) => TableCategories());
      case WindowRoute:
        return MaterialPageRoute(builder: (context) => WindowCategories());

//      case ProductRoute:
//        return MaterialPageRoute(builder: (context) => ProductDetail(
//
//        ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

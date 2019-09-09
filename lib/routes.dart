import 'package:flutter/material.dart';
import 'products.dart';
import 'product_details.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => ProductsWidgetUI());

        //ToDo: Product Details based on the clicked Product

      case '/productDetails/id=?':
        return MaterialPageRoute(
            builder: (context) => ProductDetailsWidgetUI());
      default:
        return MaterialPageRoute(builder: (context) => ProductsWidgetUI());
    }
  }
}

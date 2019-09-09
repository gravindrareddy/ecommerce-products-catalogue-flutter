import 'package:flutter/material.dart';
import 'products.dart';

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Cataloogue',
      theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white,elevation: 0),
      ),
      home: ProductsWidgetUI(),
    );
  }
}

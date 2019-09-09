import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

/// class to display list of products
class ProductsWidgetUI extends StatefulWidget {
  @override
  ProductsWidgetUIState createState() {
    // TODO: implement createState
    return ProductsWidgetUIState();
  }
}

class ProductsWidgetUIState extends State<ProductsWidgetUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              //todo: circle indicator instead of line indicator

              labelColor: Colors.purple,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              labelStyle: TextStyle(
                color: Colors.purple,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(text: "Bags"),
                Tab(text: "Shoes"),
                Tab(text: "Jackets"),
              ],
              isScrollable: true,
              indicatorColor: Colors.purple,
            ),
            title: CustomDropDownWidget("Popular"),
            actions: <Widget>[
              IconButton(
                  icon: Badge(
                      shape: BadgeShape.circle,
                      badgeColor: Colors.green,
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.black,
                      )),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: null),
            ],
          ),
          body: TabBarView(
            children: [
              GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  );
                }),
              ),
              GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  );
                }),
              ),
              GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  );
                }),
              )
            ],
          )
        ));
  }
}

class CustomDropDownWidget extends StatefulWidget {
  String dropdownValue;

  CustomDropDownWidget(this.dropdownValue);

  @override
  _CustomDropDownWidgetState createState() =>
      _CustomDropDownWidgetState(dropdownValue);
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  String dropdownValue;

  _CustomDropDownWidgetState(this.dropdownValue);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Popular', 'New']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: Text(
                          value,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        )),
                  );
                }).toList(),
              )))
            ]));
  }
}

import 'package:flutter/material.dart';
import 'package:shop_apps/widgets/all_products.dart';
import 'package:shop_apps/widgets/category.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Category",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Category(),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Product",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        AllProducts(),
      ],
    );
  }
}

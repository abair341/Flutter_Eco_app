import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_apps/models/products.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPdt.name),
      ),
    );
  }
}

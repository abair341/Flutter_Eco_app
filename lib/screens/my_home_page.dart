import 'package:flutter/material.dart';
import 'package:shop_apps/widgets/home_body.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Ecommerence App'),
      ),
      body: HomeBody(),
    );
  }
}

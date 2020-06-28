import 'package:flutter/material.dart';
import 'package:shop_apps/widgets/pdt_detail_screen.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            backgroundColor: Colors.black,
            title: Text(name),
            trailing:
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ),
        ),
      ),
    );
  }
}

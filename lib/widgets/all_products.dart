import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_apps/models/products.dart';
import 'package:shop_apps/widgets/pdt_items.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;

    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: PdtItem(
            name: pdts[i].name,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}

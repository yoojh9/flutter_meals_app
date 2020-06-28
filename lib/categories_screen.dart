import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('DeliMeal')),
        body: GridView(
            children: DUMMY_CATEGORIES
                .map((category) => CategoryItem(category.title, category.color))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                // device width가 300이면 1 item, width가 500이면 row 2 item
                maxCrossAxisExtent: 200,
                // define a child aspect ratio to define how the items should be sized regarding their height and width. (ex. 300 height 200 width)
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20)));
  }
}

import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreens extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //grid to allign elements in a grid way
    return Scaffold(
      appBar: AppBar(title: const Text('my meal app'),),
      body: GridView(
        padding: const EdgeInsets.all(25),
        //reading the data that is in the dummy  and then we load it to the category items widget and load it on the category screen
        children: dummyCategories
            .map(
              (categoryData) => CategoryItems(
                categoryData.title,
                categoryData.color,
                 categoryData.id,
                 
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //th screen size the grid will cover
          maxCrossAxisExtent: 200,
          //the size of each grid
          childAspectRatio: 3 / 2,
          //the space between the grids in the row manner
          crossAxisSpacing: 20,
          //the space between the grids in the column manner
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

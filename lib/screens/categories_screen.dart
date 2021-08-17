import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      // área da grade com o máximo do eixo cruzado [horizontal]
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // largura
        childAspectRatio: 3 / 2, // proporção
        crossAxisSpacing: 20, // espaçamentos
        mainAxisSpacing: 20, // espaçamentos
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(category: cat);
      }).toList(),
    );
  }
}

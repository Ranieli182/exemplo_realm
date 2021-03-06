import 'package:flutter/material.dart';
import './add_item_view.dart';
import './item_list_view.dart';
import '../schemas/item.dart';

class ShoppingListView extends StatelessWidget {
  final Function(String) onAdd;
  final Function(Item) onToggle;
  final Function(Item) onDelete;
  final List<Item> items;
  const ShoppingListView(
      {Key? key,
        required this.onAdd,
        required this.onToggle,
        required this.onDelete,
        required this.items})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.indigoAccent])),
      child: Column(children: [
        AddItemView(
          onAdd: onAdd,
        ),
        Expanded(
            child: ItemListView(
              items: items,
              onToggle: onToggle,
              onDelete: onDelete,
            ))
      ]),
    );
  }
}
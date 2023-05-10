import 'package:assigments/assigment_2_homepage/model/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItemWidgets extends StatelessWidget {

  const MenuItemWidgets({super.key, required this.menuItem,});

  final MenuGridItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: menuItem.cardBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menuItem.icon,
              const SizedBox(height: 14),
              Text(
                menuItem.title,
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              Text(
                menuItem.subTitle,
                style: const TextStyle(fontSize: 12,color: Colors.black54, height: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

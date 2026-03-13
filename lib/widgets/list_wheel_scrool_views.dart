import 'package:flutter/material.dart';

class ListWheelScroolViews extends StatelessWidget {
  const ListWheelScroolViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 100,
      children: List.generate(
          20,
              (index) =>
                  ListTile(
                    title: Text('Item $index'),
                    leading: Icon(Icons.percent),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      print('Item $index tapped');
                    },
                  )
              ),
    );
  }
}

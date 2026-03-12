import 'package:flutter/material.dart';
import '../screens/page1.dart' show Page1;
import '../screens/page2.dart';

class DropDownButtons extends StatefulWidget {
  const DropDownButtons({super.key});

  @override
  State<DropDownButtons> createState() => _DropDownButtonsState();
}

class _DropDownButtonsState extends State<DropDownButtons> {
  final List<String> items = ['Page1', 'Page2', 'Page3'];
  String? selectedItem = 'Page1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: selectedItem,
        items: items
            .map(
              (item) =>
                  DropdownMenuItem<String>(value: item, child: Text(item)),
            )
            .toList(),
        onChanged: (String? value) {
          setState(() {
            selectedItem = value;
          });
          switch (value) {
            case "Page1":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Page1()),
              );
              break;
            case "Page2":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Page2()),
              );
              break;
          }

          // if (value == 'Page1') {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) => const Page1()),
          //   );
          // } else if (value == 'Page2') {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) => const Page2()),
          //   );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyExpansionExample extends StatelessWidget {
  const MyExpansionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: [
            ExpansionPanelRadio(
              value: 1,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text("Item 1"
                      "FGJSKLFKASJFKJIHWIEJQRHIJWHERIJFHIJASHDIHIUOWHDCJHEIWJQHGJIVNSADJKHFUI9HUI"),
                );
              },
              body: ListTile(
                title: Text("Details for Item 1"),
              ),
            ),
            ExpansionPanelRadio(
              value: 2,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text("Itemfs 2"),
                );
              },
              body: ListTile(
                title: Text("Details for Item 2"),
              ),
            ),
          ],
        ),

    );
  }
}
import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  String messages = 'New';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.red, height: 60, child: Text(messages)),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollStartNotification) {
                setState(() {
                  messages = 'Start';
                });
              } else if (scrollNotification is ScrollUpdateNotification) {
                setState(() {
                  messages = 'Update';
                });
              } else if (scrollNotification is ScrollEndNotification) {
                setState(() {
                  messages = 'End';
                });
              }
              return true;
            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class IndexWidget extends StatefulWidget {
  const IndexWidget({super.key});

  @override
  State<IndexWidget> createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  int index = 0;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text('Screen 1'),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('Screen 2'),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text('Screen 3'),
                  ),
                ],
              ),
            ],
          ),
        ),

        IndexedStack(
          clipBehavior: Clip.none,
          index: index,
          children: [
            Image.network(
              'https://images.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png',
              height: 100,
            ),
            Image.network(
              'https://images.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png',
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('jsaiofsa')],
            ),
          ],
        ),
      ],
    );
  }
}

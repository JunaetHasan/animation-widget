import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/flow_screen_1.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({super.key});

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;

  IconData latestIconDataClickAt = Icons.notification_add;

  final List<IconData> menuItems = [
    Icons.home,
    Icons.notification_add,
    Icons.settings,
    Icons.share,
    Icons.star,
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems.map((icon) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: FloatingActionButton(
              backgroundColor: latestIconDataClickAt == icon
                  ? Colors.grey
                  : Colors.white,
              onPressed: () {
                if (menuAnimation.status == AnimationStatus.completed) {
                  menuAnimation.reverse();
                } else {
                  menuAnimation.forward();
                }

                setState(() {
                  latestIconDataClickAt = icon;
                });
                if (icon == Icons.home) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FlowScreen1()),
                  );
                }
                // switch(icon){
                //   case Icons.home:
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (_) => FlowScreen1()),
                //     );
                //     break;
                // }
              },
              child: Icon(icon),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
    : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      dx += context.getChildSize(i)!.width;

      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0.0,
          0.0,
        ),
      );
    }
  }
}

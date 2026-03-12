import 'package:flutter/material.dart';

class FuturebuilderWidgets extends StatefulWidget {
  const FuturebuilderWidgets({super.key});

  @override
  State<FuturebuilderWidgets> createState() => _FuturebuilderWidgetsState();
}

class _FuturebuilderWidgetsState extends State<FuturebuilderWidgets> {
  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 2));
    //throw 'error';
    return 'Super!';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        } else {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Refresh'),
              ),
            ],
          );
        }
      },
    );
  }
}

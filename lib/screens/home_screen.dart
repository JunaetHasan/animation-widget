import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/drop_down_button.dart';
import 'package:flutter_practice/widgets/flow_widget.dart';

import '../widgets/panel_redio.dart';
import '../widgets/transform_translate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          //SizedBox(height: 10,),
        //  TransformTranslate(),
          SizedBox(height: 10,),
          DropDownButtons(),
          SizedBox(height: 10,),
          MyExpansionExample(),
          SizedBox(height: 20,),
          FlowWidget(),


        ],
      ),
    );
  }
}



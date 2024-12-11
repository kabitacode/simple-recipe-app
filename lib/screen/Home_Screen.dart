import 'package:flutter/material.dart';
import 'package:myapp/widget/CustomView.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0B192C),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints contraints) {
              if (contraints.maxWidth <= 600) {
                return CustomView(gridCount: 1);
              } else if (contraints.maxWidth <= 1200) {
                return CustomView(gridCount: 2);
              } else {
                return CustomView(gridCount: 4);
              }
            }),
          ),
        ));
  }
}

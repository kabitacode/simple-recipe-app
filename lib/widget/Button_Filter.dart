import 'package:flutter/material.dart';

class ButtonFilter extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  ButtonFilter({Key? key, required this.name, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Color(0xFFEEE4B1)),
        child: Text(name, style: TextStyle(fontSize: 12, color: Colors.black)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/model/Recipe_Model.dart';
import 'package:myapp/screen/Detail_Mobile_Screen.dart';
import 'package:myapp/screen/Detail_Web_Screen.dart';

class DetailScreen extends StatelessWidget {
  final RecipeModel recipe;

  const DetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebScreen(recipe: recipe);
      } else {
        return DetailMobileScreen(recipe: recipe);
      }
    });
  }
}

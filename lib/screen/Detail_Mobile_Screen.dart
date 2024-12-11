import 'package:flutter/material.dart';
import 'package:myapp/model/Recipe_Model.dart';

class DetailMobileScreen extends StatelessWidget {
  final RecipeModel recipe;

  const DetailMobileScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Recipe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              )),
          backgroundColor: Color(0xFF0B192C),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        backgroundColor: Color(0xFF0B192C),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    recipe.imageAsset,
                    width: double.infinity,
                    height: 250,
                  ),
                ),
                SizedBox(height: 10),
                Text(recipe.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                SizedBox(height: 10),
                Text(recipe.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(height: 20),
                Text("Bahan - Bahan :",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFEBC657),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: recipe.ingredients.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('${index + 1}',
                                style: TextStyle(
                                  color: const Color.fromARGB(197, 16, 16, 16),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          title: Text(recipe.ingredients[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        );
                      }),
                ),
                SizedBox(height: 20),
                Text("Cara Membuat :",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFEBC657),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: recipe.step.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('${index + 1}',
                                style: TextStyle(
                                  color: const Color.fromARGB(197, 16, 16, 16),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          title: Text(recipe.step[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

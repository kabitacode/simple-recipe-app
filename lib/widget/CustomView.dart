import 'package:flutter/material.dart';
import 'package:myapp/data/recipe.dart';
import 'package:myapp/screen/Detail_Screen.dart';
import 'package:myapp/widget/Button_Filter.dart';

class CustomView extends StatelessWidget {
  final int gridCount;

  const CustomView({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    Row(
                      children: [
                        Text("World",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.waving_hand,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: filterButton.map((item) {
                  return Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ButtonFilter(name: item.name, onTap: () {}));
                }).toList()),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: gridCount,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: screenSize.width > 800
                    ? 1.8
                    : screenSize.width < 600
                        ? 2
                        : 1.5,
                children: recipe.map((item) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(recipe: item);
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1E3E62)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            item.imageAsset,
                            height: 150,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(item.cal,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[600])),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(item.protein,
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[600]))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(item.name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(item.description,
                                    textAlign: TextAlign.justify,
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}

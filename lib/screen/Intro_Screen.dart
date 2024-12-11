import 'package:flutter/material.dart';
import 'package:myapp/screen/Login_Screen.dart';
import 'package:myapp/widget/Custom_Button.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Column(
          children: [
            Image.asset(
              'assets/images/intro.png',
              width: double.infinity,
              height: 300,
            ),
            const Text(
              "Find the perfect recipe everyday",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            const SizedBox(height: 20),
            const Text(
              "Discover the best recipes for every moment, explore new flavors, and make cooking more fun!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            const Spacer(),
            CustomButton(
                title: "Let's Start",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                })
          ],
        ),
      ),
    );
  }
}

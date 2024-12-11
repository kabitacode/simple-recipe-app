import 'package:flutter/material.dart';
import 'package:myapp/screen/Home_Screen.dart';
import 'package:myapp/screen/Login_Screen.dart';
import 'package:myapp/screen/Register_Screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return RegisterScreenWeb();
      } else {
        return RegisterScreenMobile();
      }
    });
  }
}

class RegisterScreenWeb extends StatefulWidget {
  const RegisterScreenWeb({super.key});

  @override
  _RegisterScreenWebState createState() => _RegisterScreenWebState();
}

class _RegisterScreenWebState extends State<RegisterScreenWeb> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool visible = false;
  bool visibleConfirm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B192C),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFBD45E),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 50),
                                child: const Text("Recipe App",
                                    style: TextStyle(
                                      color: Color(0xFF383737),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: TextField(
                                  controller: email,
                                  style: const TextStyle(
                                      fontSize: 13, color: Color(0xFF383737)),
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Email",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: TextField(
                                  controller: username,
                                  style: const TextStyle(
                                      fontSize: 13, color: Color(0xFF383737)),
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Username",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: TextField(
                                  obscureText: !visible,
                                  controller: password,
                                  style: const TextStyle(
                                      color: Color(0xFF383737), fontSize: 13),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              visible = !visible;
                                            });
                                          },
                                          icon: visible
                                              ? const Icon(Icons.visibility)
                                              : const Icon(
                                                  Icons.visibility_off)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Password",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: TextField(
                                  obscureText: !visibleConfirm,
                                  controller: confirmPassword,
                                  style: const TextStyle(
                                      color: Color(0xFF383737), fontSize: 13),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              visibleConfirm = !visibleConfirm;
                                            });
                                          },
                                          icon: visibleConfirm
                                              ? const Icon(Icons.visibility)
                                              : const Icon(
                                                  Icons.visibility_off)),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xFF383737))),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      labelText: "Confirm Password",
                                      labelStyle: const TextStyle(
                                          color: Color(0xFF383737))),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("have an account?",
                                        style: TextStyle(
                                          color: Color(0xFF383737),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return LoginScreen();
                                          }));
                                        },
                                        child: const Text("Login here",
                                            style: TextStyle(
                                              color: Color(0xFF383737),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            )))
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size.fromHeight(45),
                                      backgroundColor: Colors.blue),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginScreen();
                                    }));
                                  },
                                  child: const Text(
                                    "Register",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ))),
        ));
  }
}

class RegisterScreenMobile extends StatefulWidget {
  const RegisterScreenMobile({super.key});

  @override
  _RegisterScreenMobileState createState() => _RegisterScreenMobileState();
}

class _RegisterScreenMobileState extends State<RegisterScreenMobile> {
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool visible = false;
  bool visibleConfirm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0B192C),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: const Text("Recipe App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: username,
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Username",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: email,
                    style: const TextStyle(fontSize: 13, color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Email",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                    obscureText: !visible,
                    controller: password,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            icon: visible
                                ? const Icon(Icons.visibility,
                                    color: Colors.white)
                                : const Icon(Icons.visibility_off,
                                    color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextField(
                    obscureText: !visibleConfirm,
                    controller: confirmPassword,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibleConfirm = !visibleConfirm;
                              });
                            },
                            icon: visibleConfirm
                                ? const Icon(Icons.visibility,
                                    color: Colors.white)
                                : const Icon(Icons.visibility_off,
                                    color: Colors.white)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Connfirm Password",
                        labelStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginScreen();
                            }));
                          },
                          child: const Text("Register here",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )))
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ))
              ],
            ),
          )),
        ));
  }
}

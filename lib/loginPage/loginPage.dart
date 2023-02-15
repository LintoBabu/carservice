
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homepage/homepage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool hiddenPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          child: Center(
                            child: Image.asset(
                              "assets/images/logo.png",
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Car Service",
                      style: GoogleFonts.akayaTelivigala(
                        fontSize: 28,
                      ),
                    ),
                    const Icon(Icons.settings)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.grey))),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Username",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    obscureText: hiddenPass,
                                    decoration: InputDecoration(
                                        suffixIcon: InkWell(
                                            onTap: () {
                                              togglePassword();
                                            },
                                            child: Icon(hiddenPass
                                                ? Icons.visibility
                                                : Icons.visibility_off)),
                                        prefixIcon: const Icon(
                                          Icons.password,
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            const TextStyle(color: Colors.grey)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const homePage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Center(
                              child: Text("Login",
                                  style: GoogleFonts.anticDidone(
                                      color: Colors.white,
                                      fontSize: 17,
                                      letterSpacing: 3,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePassword() {
    setState(() {
      hiddenPass = !hiddenPass;
    });
  }
}

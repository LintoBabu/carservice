import 'package:flutter/material.dart';

import 'loginPage/loginPage.dart';

void main() {
  runApp(newApp());
}

class newApp extends StatelessWidget {
  const newApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}

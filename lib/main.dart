import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mehmeterkam_website/ui/themes.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myLightTheme(),
      darkTheme: myDarkTheme(),
      home: const HomePage(),
      scrollBehavior: const CupertinoScrollBehavior(),
    );
  }
}

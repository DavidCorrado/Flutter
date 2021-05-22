import 'package:flutter/material.dart';
import 'package:flutterexample/page/main_navigation_page.dart';
import 'package:flutterexample/themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Example",
        theme: Themes.buildTheme(),
        home: MainNavigationPage());
  }
}

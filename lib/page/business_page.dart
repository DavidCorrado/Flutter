import 'package:flutter/material.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BusinessPageState();
  }
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Business"), brightness: Brightness.dark),
      body: Text("Business"),
    );
  }
}

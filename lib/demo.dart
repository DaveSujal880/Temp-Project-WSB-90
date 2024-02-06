import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Check Box"),
        ),
        body: Center(
          child: ElevatedButton(onPressed: () {}, child: Text("on Tap")),
        ));
  }
}

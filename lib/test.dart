import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
        centerTitle: true,
      ),
      body: size.width>600?Row(children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Column(
            children: [
              Text(size.height.toString()),
              Text(size.width.toString())
            ],
          ),
        ),
        SizedBox(width: 20),
        Container(
          height: 200,
          width: 200,
          color: Colors.pink,
        )
      ],):Column(children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Column(
            children: [
              Text(size.height.toString()),
              Text(size.width.toString())
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 200,
          width: 200,
          color: Colors.purple,
        )
      ],)
    );
  }
}

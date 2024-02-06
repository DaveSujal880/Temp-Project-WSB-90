import 'package:flutter/material.dart';

class LandScapeScreen extends StatefulWidget {
  const LandScapeScreen({super.key});

  @override
  State<LandScapeScreen> createState() => _LandScapeScreenState();
}

class _LandScapeScreenState extends State<LandScapeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LandScape Screen"),
        centerTitle: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PortraitScreen extends StatefulWidget {
  const PortraitScreen({super.key});

  @override
  State<PortraitScreen> createState() => _PortraitScreenState();
}

class _PortraitScreenState extends State<PortraitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portrait Screen"),
        centerTitle: true,
      ),
    );
  }
}

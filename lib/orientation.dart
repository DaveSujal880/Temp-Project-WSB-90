import 'package:flutter/cupertino.dart';
import 'package:responsive_wsb_78/portraitscreen.dart';

import 'landscapescreen.dart';

class Orientation1 extends StatefulWidget {
  const Orientation1({super.key});

  @override
  State<Orientation1> createState() => _OrientationState();
}

class _OrientationState extends State<Orientation1> {
  @override
  Widget build(BuildContext context) {
    var orientation=MediaQuery.of(context).orientation;
    return OrientationBuilder(builder: (context,constraints){
     if(orientation==Orientation.portrait){
       return PortraitScreen();
     }
     else{
       return LandScapeScreen();
     }
    });
  }
}

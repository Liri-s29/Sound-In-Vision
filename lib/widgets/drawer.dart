import "package:flutter/material.dart";
import 'package:sound_in_vision/service/processor.dart';
import 'package:sound_in_vision/utils/navigation.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final List<int> colorCodes = <int>[600, 500, 100];
  List stringList = Processor.isl_gif;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text('Sound in Vision'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './Toggle.dart';

void main() => runApp(MyApp());
  

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  ItemState createState() => ItemState();
}

class ItemState extends State<MyApp> {
  List<Device> deviceItem = [
    Device( name: 'Lampu Living Room', icon: Icons.light, switchh: false, ),
    Device( name: 'AC Bilik 1', icon: Icons.ac_unit, switchh: false, ),
    Device( name: 'Lampu Kitchen', icon: Icons.lightbulb, switchh: false, ),
    Device( name: 'AC Bilik 2', icon: Icons.ac_unit, switchh: false, ),
    Device( name: 'TV Room', icon: Icons.tv, switchh: false, ),
    
  ];

  void toggle(String name) {
    int deviceIndex = deviceItem.indexWhere((device) => device.name == name);
    if (deviceIndex != -1) {
      setState(() {
        deviceItem[deviceIndex].switchh = !deviceItem[deviceIndex].switchh;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(title: Text('My Home')),
        body: AppTab(deviceItem, toggle),
      ),
    );
  }
}
// Flutter 地理位置
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Location Demo')),
        body: Center(
          child: Text('Use geolocator package'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task3/calcHome.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: calcHome.routeName,
      routes: {
        calcHome.routeName : (context) => calcHome(),
      },
    );
  }


}

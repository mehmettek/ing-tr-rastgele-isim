import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Rastgele İsim Generator",
       home:MyHomePage(),
     );
  }
}
class  MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("İng-Tr Random Name"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {},
        ),
      ],),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(null),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket,
          color: Colors.grey[800],))
        ],
      ),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}

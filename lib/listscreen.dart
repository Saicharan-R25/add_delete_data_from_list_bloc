import 'package:flutter/material.dart';
class Listscreen extends StatelessWidget {
  const Listscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Operations Demo"),),
      body: Center(child: Text("your list goes here"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

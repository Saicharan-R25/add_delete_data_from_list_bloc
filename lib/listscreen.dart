import 'package:flutter/material.dart';
class Listscreen extends StatelessWidget {
  Listscreen({Key? key}) : super(key: key);
  List<String> testing=["one","two","three"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Operations Demo"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView.builder(
          itemCount: testing.length,
          itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(testing[index]),
          );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

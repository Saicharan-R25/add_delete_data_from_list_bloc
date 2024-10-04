import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/list_bloc/listoperation_bloc.dart';

class Listscreen extends StatelessWidget {
  Listscreen({super.key});


  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Function to show the alert dialog
  // void _showInputDialog(BuildContext context) {
  //   // showDialog(
  //   //   context: context,
  //   //   builder: (BuildContext context) {
  //   //     return AlertDialog(
  //   //       title: Text('Enter Details'),
  //   //       content: Column(
  //   //         mainAxisSize: MainAxisSize.min,  // Ensures the dialog only takes as much space as needed
  //   //         children: [
  //   //           TextField(
  //   //             controller: _titleController,
  //   //             decoration: InputDecoration(
  //   //               labelText: 'First Input',
  //   //             ),
  //   //           ),
  //   //           SizedBox(height: 10),  // Add some spacing between the input fields
  //   //           TextField(
  //   //             controller: _descriptionController,
  //   //             decoration: InputDecoration(
  //   //               labelText: 'Second Input',
  //   //             ),
  //   //           ),
  //   //         ],
  //   //       ),
  //   //       actions: [
  //   //         TextButton(
  //   //           onPressed: () {
  //   //             // Handle the data and close the dialog
  //   //             print('First Input: ${_titleController.text}');
  //   //             print('Second Input: ${_descriptionController.text}');
  //   //             context.read<ListoperationBloc>().add(AddTask(title:_titleController.text, description: _descriptionController.text));
  //   //
  //   //             // Close the dialog
  //   //             Navigator.of(context).pop();
  //   //           },
  //   //           child: Text('Done'),
  //   //         ),
  //   //       ],
  //   //     );
  //   //   },
  //   // );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Operations Demo"),),
      body: BlocBuilder<ListoperationBloc, ListoperationState>(
        builder: (context, state) {

          return ListView.builder(
            itemCount: state.tasks.length,

            itemBuilder: (BuildContext context, int index) {
              var task=state.tasks[index];

              return ListTile(

                title: Text(task.title),
                subtitle: Text(task.description),
                trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.remove_circle), ),
              );
            },);
        },
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Enter Details'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,  // Ensures the dialog only takes as much space as needed
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: 'First Input',
                      ),
                    ),
                    SizedBox(height: 10),  // Add some spacing between the input fields
                    TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Second Input',
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {

                      print('First Input: ${_titleController.text}');
                      print('Second Input: ${_descriptionController.text}');
                      context.read<ListoperationBloc>().add(AddTask(title:_titleController.text, description: _descriptionController.text));
                      Navigator.of(context).pop();
                    },
                    child: Text('Done'),
                  ),
                ],
              );
            },
          );
          // context.read<ListoperationBloc>().add(AddTask(title:_titleController.text, description: _descriptionController.text));
          },
        child: Icon(Icons.add),
      ),
    );
  }
}

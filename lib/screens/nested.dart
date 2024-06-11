import 'package:flutter/material.dart';

class NestedScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Nested Built! ");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Text('Nested screen'),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: "Test"
            ),
          ),
        ],
      ),
    );
  }
}
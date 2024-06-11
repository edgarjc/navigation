import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Text('Settings screen'),
          ),
          ElevatedButton(onPressed: (){
            GoRouter.of(context).go('/nested/nestedScreen2');
          }, child: Text("Nested Home"))
        ],
      ),
    );
  }
}
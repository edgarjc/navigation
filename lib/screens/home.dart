import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/screens/nested.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Center(
            child: Text('Home screen'),
          ),
          ElevatedButton(onPressed: (){
            print("pushing settings");
            //context.push('/home/nestedScreen');
            context.go('/home/nestedScreen');
            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NestedScreen(), //TripDetails(tripInfo: trip),
              ),
            );*/
          }, child: Text("Nested Settings"))
        ],
      ),
    );
  }
}
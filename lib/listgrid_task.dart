// class g extends StatefulWidget {
//   const gridPageTask({super.key});
//
//   @override
//   State<gridPageTask> createState() => _gridPageTaskState();
// }
//
// class _gridPageTaskState extends State<gridPageTask> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class listGrid extends StatefulWidget {
  const listGrid({super.key});

  @override
  State<listGrid> createState() => _listGridState();
}

class _listGridState extends State<listGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue,
  title: Text("MULLAYYAAA",style: TextStyle(fontSize: width*0.05,color: Colors.black),),
),
      body:Container(
        height: width*2,
        width: width*1,
        color: Colors.green[300],
        child: Container(

        ),



      ),
    );
  }
}

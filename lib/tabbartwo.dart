import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

class taBbarTwo extends StatefulWidget {
  const taBbarTwo({super.key});

  @override
  State<taBbarTwo> createState() => _taBbarTwoState();
}

class _taBbarTwoState extends State<taBbarTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding:  EdgeInsets.all(width*0.05),
            child: Column(

               children: [
                 Container(
                   height: width*0.08,
                   width: width*1,
                   child: TabBar(
                     labelColor: Colors.white,
                       unselectedLabelColor: Colors.black,
                       indicator: BoxDecoration(
                         color: Colors.purple,
                         borderRadius: BorderRadius.circular(width*0.05,)
                       ),
                       tabs:[
                     Text("A"),
                     Text("B"),
                     Text("C")
                   ]),

                 ),
                 Container(
                   height: width*1.6,
                   width: width*1,
                   child: TabBarView(
                     children: [
                       Container(
                         color: Colors.amber,
                       ),
                       Container(
                         color: Colors.greenAccent,
                       ), Container(
                         color: Colors.pink,
                       ),

                     ],
                   ),
                 )
               ],


            ),
          ),
        ));
  }
}

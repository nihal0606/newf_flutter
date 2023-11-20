import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

class tabBarPage extends StatefulWidget {
  const tabBarPage({super.key});

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Whatsapp",style:TextStyle(color: Colors.white),),
            bottom:TabBar(tabs: [
              Text("CHAT"),
              Text("STATUS"),
              Text("CALLS")
            ],
              indicatorColor: Colors.white,

            ),
          ),
          body: Container(
            height: width*2,
            width: width*1,
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(children: [
                    Container(
                      color: Colors.greenAccent,
                    ),
                    Container(
                      color: Colors.cyanAccent,
                    ),
                    Container(
                      color: Colors.amber,
                    )
                  ]),
                )
              ],

            ),
          ),

        ));
  }
}

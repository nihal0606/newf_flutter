import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/widgets.dart';

import 'FirstPage.dart';
import 'caroselpage.dart';
import 'listgrid_task.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectIndex =0;
  onTaped(int index){

    setState(() {
      selectIndex=index;
    });
  }
  List pages=[




    FirstPage(),
    widgetsPage(),
    listGrid(),
    caroselPage()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem (
          icon:Icon(Icons.home),
          label: "HOME"

        ),
          BottomNavigationBarItem (
              icon:Icon(Icons.person),
              label: "PERSON"

          ),
          BottomNavigationBarItem (
              icon:Icon(Icons.phone),
              label: "CONTACTS"

          ),
          BottomNavigationBarItem (
              icon:Icon(Icons.settings),
              label: "SETTINGS"

          ),
      ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectIndex,
        onTap: onTaped,

      ),
    );
  }
}

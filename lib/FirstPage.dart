import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

import 'gridview_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.car_repair_outlined,),
      ),
        title: Center(child: Text(" MUSK WORLD ",style: TextStyle(fontSize:25 ),)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.car_crash_outlined))
        ],
    ),body:Center(
      child: InkWell(
        onTap:() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => gridPage(),));
        },
        child: Container(
          height: width*0.1,
          width: width*0.2,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(width*0.03),
          ),
          child: Center(child: Text("CLICK",style: TextStyle(fontSize: 10,color: Colors.white),)),
        ),
      ),
    ),
    floatingActionButton:Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: (
                ){

            },
            backgroundColor: Colors.black,
            child: Icon(Icons.car_rental_rounded),
          ),
          SizedBox(width:10,),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            child: Icon(Icons.car_rental_rounded),
          ),
          SizedBox(width:10,),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            child: Icon(Icons.car_rental_rounded),
          ),
          SizedBox(width:10,),

          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            child: Icon(Icons.car_rental_rounded),
          ),
          SizedBox(width:10,),
        ],
      ),
    ),
    );


  }
}

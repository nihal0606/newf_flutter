import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

import 'FlipKart.dart';
import 'grid_task.dart';

class gridPage extends StatefulWidget {
  const gridPage({super.key});

  @override
  State<gridPage> createState() => _gridPageState();
}

class _gridPageState extends State<gridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      body: Container(
        height: width*2,
        width: width*1,
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
           Row(
             children: [
               SizedBox(height: width*0.35,),
               InkWell(
                 onTap: () {
                   Navigator.pop(context);
                 },
                   child: Icon(Icons.arrow_back_rounded,size: width*0.07,color: Colors.black,)),
               SizedBox(width: width*0.1,),

               InkWell(
                 onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => gridTask(),));
                 },
                   child: Icon(Icons.add,size: width*0.07,color: Colors.black,))
             ],
           ),
            Expanded(
              child: GridView.builder(
                itemCount: 50,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: width*0.03,
                  mainAxisSpacing: width*0.03,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    height: width*0.2,
                    width: width*0.2,
                    color: Colors.red,
                  );
                },

              ),
            )
          ],
        ),
      ),
    );
  }
}

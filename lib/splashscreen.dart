import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';
import 'package:newf_flutter/tabbarpage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
  Future.delayed(Duration(seconds: 6)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => tabBarPage(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text("MELCOME",
                  style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize:width*0.07,color: Colors.purple),),
                SizedBox(height: width*0.05,),
                CircularProgressIndicator(
                  color: Colors.green,

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

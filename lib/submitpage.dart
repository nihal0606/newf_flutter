import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

class submitPage extends StatefulWidget {
  final String name;
  final String number;
  final String email;
  final String password;
  final String address;
  const submitPage({super.key, required this.name, required this.number, required this.email, required this.password, required this.address});

  @override
  State<submitPage> createState() => _submitPageState();
}

class _submitPageState extends State<submitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("NAME:${widget.name}",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500,),),
          Text("NUMBER:${widget.number}",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),),
          Text("EMAIL:${widget.email}",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),),
          Text("PASSWORD:${widget.password}",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),),
          Text("ADDRESS:${widget.address}",style: TextStyle(fontSize: width*0.05,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}

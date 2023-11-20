import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/listgrid_task.dart';
import 'package:newf_flutter/main.dart';

class caroselPage extends StatefulWidget {
  const caroselPage({super.key});

  @override
  State<caroselPage> createState() => _caroselPageState();
}

class _caroselPageState extends State<caroselPage> {
  List image=[
  "asstes/images/img.png",
   "assets/images/insta.jpeg",
    "assets/images/snap.png",


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
actions: [
  GestureDetector(

    onTap: () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => listGrid(),),  ModalRoute.withName('/'));
    },
      child: Icon(Icons.account_balance,size: width*0.07,color: Colors.black,))
],
      title: Text("caroselpage",style: TextStyle(fontSize: 20,color:Colors.black ),),
      ),
      body: Container(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  height: width*0.5,
                  width:width*1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image[index]),fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.all(width*0.03),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
                viewportFraction: 1
              ),
            ),
          ],
        )


      ),
    );
  }
}

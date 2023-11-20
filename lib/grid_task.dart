import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

import 'caroselpage.dart';

class gridTask extends StatefulWidget {
  const gridTask({super.key});

  @override
  State<gridTask> createState() => _gridTaskState();
}

class _gridTaskState extends State<gridTask> {
  List image=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJA4zdqHGSiRToxX7zPQ0kCfEWMtTeq2S-lQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTflZqP83WOLU21K_KRBUhsMLQtj_Zy6dL5Rg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQh49kg0mjqG7oW4F6yydqqBdaqyfKnMzDjg&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIUa5UWFF3Qg5ZBV83C7MIo99eUvZo7CIl1g&usqp=CAU",
  ];

  List text=[
    "ELON",
    "TESLA",
    "META",
    "INSTA",
  ];
  List grid=[

    {
      "image":"assets/images/facebook.jpeg",
      "text1":"FACE",
      "text2":"BOOK",
    },
    {
      "image":"assets/images/insta.jpeg",
      "text1":"INSTA",
      "text2":"GRAM",

    },
    {
      "image":"assets/images/isro.jpeg",
      "text1":"IS",
      "text2":"RO",

    },
    {
      "image":"assets/images/nasa.jpeg",
      "text1":"NA",
      "text2":"SA",

    },
    {
      "image":"assets/images/snap.png",
      "text1":"SNAP",
      "text2":"CHAT",

    },
    {
      "image":"assets/images/spacex.jpeg",
      "text1":"SPAC",
      "text2":"EX",

    },
    {
      "image":"assets/images/img_1.png",
      "text1":"WHATS",
      "text2":"APP",

    },
    {
      "image":"assets/images/twitter.png",
      "text1":"TWI",
      "text2":"TER",

    },
    {
      "image":"assets/images/thumba.jpeg",
      "text1":"THUMBA",
      "text2":"ISRO",

    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap:() {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => caroselPage(),));
            },
              child: Icon(Icons.add_alert_sharp,size: width*0.07,color: Colors.black,))
        ],
      ),

      body: Container(
        height: width*2,
        width: width*1,
        padding: EdgeInsets.all(width*0.03),

        child: Column(
          children: [
            Container(
              height: width*0.3,
              width:width*1 ,

              child: ListView.builder(
                scrollDirection:  Axis.horizontal,
                 itemCount: image.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,  index) {
                  return Container(
                   height: width*0.2,
                    width: width*0.3,
                    margin: EdgeInsets.all(width*0.02),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(width*0.03) ,
                      color: Colors.white,
                      boxShadow:[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                          offset: Offset(0,4),
                          blurRadius:4,
                          spreadRadius: 2,
                        ),
                      ],

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width: width*0.15,

                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(width*0.03),
                            color: Colors.red,
                            image:DecorationImage(
                              image: NetworkImage(image[index]),
                              fit: BoxFit.fill
                            ),


                          ),
                        ),

                        Text(text[index])
                      ],
                    ),
                  );

                },

              ),

            ),
            SizedBox(
              height: width*0.03,
            ),
            Text("FACEBOOK"),
           
            Expanded(
              child: GridView.builder(
                scrollDirection:  Axis.vertical,
                itemCount: grid.length,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                mainAxisSpacing: width*0.03,
                  childAspectRatio: 1,
                  crossAxisSpacing: width*0.03
                ),
                
                itemBuilder: (context,  index) {
                  return Container(
                    height: width*0.3,
                    width: width*0.3,
                    margin: EdgeInsets.all(width*0.02),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(width*0.03) ,
                      color: Colors.white,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: Offset(0,4),
                          blurRadius:4,
                          spreadRadius: 2,
                        ),
                      ],

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width: width*0.15,

                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(width*0.03),
                            color: Colors.red,
                            image:DecorationImage(
                                image: AssetImage(grid[index]["image"]),fit: BoxFit.fill
                            ),


                          ),
                        ),

                        Text(grid[index]["text1"]),
                        Text(grid[index]["text2"])
                      ],
                    ),
                  );

                }, 

              ),
            ),

 ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

class CouponsPage extends StatefulWidget {
  const CouponsPage({super.key});

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {


  List rewards =[
    {
      'title':'all\nrewards',
      'icon':'assets/images/flipkart.jpeg'
    },
    {
      'title':'SuperCoin\nZone',
      'icon':'assets/images/super coin.png'
    },
    {
      'title':'Game\nZone',
      'icon':'assets/images/game zone.jpg'
    },
    {
      'title':'Videos',
      'icon':'assets/images/videos.png'
    },
  ];
  List coupons =[
    {
      "image":"assets/images/nasa.jpeg",
      "title":"Clothing,Foodwear&Accesorries",
      "title1":"Extra 50 off",
      "title2":"Exuclusivily For You",
      "color":Colors.blue,
      "textstyle1":TextStyle(fontWeight:FontWeight.w700,fontSize:width*0.04,color: Colors.black),
      "textstyle2":TextStyle(fontWeight:FontWeight.w600,fontSize:width*0.05,color: Colors.purple),
      "textstyle3":TextStyle(fontWeight:FontWeight.w800,fontSize:width*0.06,color: Colors.pink)
    },
    {
      "image":"assets/images/spacex.jpeg",
      "title":"Price Drope Alert !",
      "title1":"Up to 30-80% off* on Hotels",
      "title2":"code: FKSTAY",
      "color":Colors.yellow,
      "textstyle1":TextStyle(fontWeight:FontWeight.w800,fontSize:width*0.06,color: Colors.lightGreen),
      "textstyle2":TextStyle(fontWeight:FontWeight.w700,fontSize:width*0.05,color: Colors.red),
      "textstyle3":TextStyle(fontWeight:FontWeight.w600,fontSize:width*0.04,color: Colors.cyanAccent),

    },
    {
      "image":"assets/images/tesla.jpeg",
      "title":"More Rewards& Coupons",
      "title1":"Get Up to 100% Off using coins",
      "title2":"",
      "color":Colors.purple[100],
      "textstyle1":TextStyle(fontWeight:FontWeight.w500,fontSize:width*0.05,color: Colors.greenAccent),
      "textstyle2":TextStyle(fontWeight:FontWeight.w700,fontSize:width*0.04,color: Colors.amber),
      "textstyle3":TextStyle()

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:Colors.grey.shade200,
appBar: AppBar(

  elevation: 0,

  backgroundColor: Colors.blue,
  leading: Icon( Icons.arrow_back_rounded,color: Colors.white,),

 actions: [  Icon(Icons.search,size: 20,),

   Padding(
     padding: const EdgeInsets.only(left:20),
     child: Icon(Icons.mic,size: 20,),
   ),
   Padding(
     padding: const EdgeInsets.only(left: 20),
     child: Icon(Icons.camera_alt,size:20,),
   ),
   Padding(
     padding: const EdgeInsets.only(left: 20,right: 10),
     child: Icon(Icons.shopping_cart,size: 20,),
   )],
  title: Text("Coupons",style:TextStyle(fontSize: 20),),
),
      body: Column(
        children: [
          Container(
            height: width*0.15,
            width: width*1,
            color: Colors.white,

child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Text("See Rewards By",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w700),)
  ],
),
          ),
          // Row(
          //   children: [
          //
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //             border: Border.all(color: Colors.grey.shade400)
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: [
          //             Text("All\nReward",textAlign: TextAlign.center,),
          //           ],
          //         ),
          //         height: width*0.2,
          //         width: width*0.2,
          //       ),
          //
          //     ),
          //     // Padding(
          //     //   padding: const EdgeInsets.all(8.0),
          //     //   child: Container(
          //     //     decoration: BoxDecoration(
          //     //       borderRadius: BorderRadius.circular(10),
          //     //         border: Border.all(color: Colors.grey.shade400)
          //     //     ),
          //     //     child: Column(
          //     //       mainAxisAlignment: MainAxisAlignment.end,
          //     //       children: [
          //     //         Text("Super\nZone",textAlign: TextAlign.center,)
          //     //       ],
          //     //     ),
          //     //
          //     //     height: width*0.2,
          //     //     width: width*0.2,
          //     //
          //     //   ),
          //     // ),
          //     // Padding(
          //     //   padding: const EdgeInsets.all(8.0),
          //     //   child: Container(
          //     //     decoration: BoxDecoration(
          //     //       borderRadius: BorderRadius.circular(10),
          //     //         border: Border.all(color: Colors.grey.shade400)
          //     //     ),
          //     //     child: Column(
          //     //       mainAxisAlignment: MainAxisAlignment.end,
          //     //       children: [
          //     //         Text("Game\nZone",textAlign: TextAlign.center,)
          //     //       ],
          //     //     ),
          //     //     height: width*0.2,
          //     //     width: width*0.2,
          //     //
          //     //   ),
          //     // ),
          //     // Padding(
          //     //   padding: const EdgeInsets.all(8.0),
          //     //   child: Container(
          //     //     decoration: BoxDecoration(
          //     //       borderRadius: BorderRadius.circular(width*0.03),
          //     //      border: Border.all(color: Colors.grey.shade400)
          //     //     ),
          //     //     child: Column(
          //     //       mainAxisAlignment: MainAxisAlignment.center,
          //     //       children: [
          //     //         Text("Video",textAlign: TextAlign.center,)
          //     //       ],
          //     //     ),
          //     //     height: width*0.2,
          //     //     width: width*0.2,
          //     //
          //     //   ),
          //     // ),
          //
          //   ],
          //
          // )

          Container(
            height: width*0.35,
            width: width*1,
            // color: Colors.blue,
            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: rewards.length,
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 015.0),
                        child: Container(
                          height: width*0.2,
                          width: width*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              Text(rewards[index]['title'],textAlign: TextAlign.center,),

                            ],
                          ),

                        ),
                      ),
                      Positioned(
                          left: width*0.05,
                          top:0,

                          child: CircleAvatar(
                            backgroundImage: AssetImage(rewards[index]['icon']),
                            radius: width*0.05,))
                    ],
                  ),
                );
              }
            ),
          ),

SizedBox(height: width*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Text("My Coupons",style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.w500,color: Colors.black),),
              ),

            ],
          ),

       ListView.builder(
         shrinkWrap: true,
         itemCount: 3,
         itemBuilder: (context,index)

         {
           return Padding(
             padding: EdgeInsets.all(width*0.03),
             child: Container(

               decoration: BoxDecoration(
                   color:coupons[index]["color"],
                 borderRadius: BorderRadius.circular(width*0.02)
               ),



               height: width*0.2,
               width: width,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(width:width*0.03,),
                   CircleAvatar(radius: width*0.08,
                   backgroundImage: AssetImage(coupons[index]["image"]

                   ),),
                   SizedBox(width:width*0.03,),
                   Column(

                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(coupons[index]["title"],style:coupons [index]["textstyle1"]
                       ),Text(coupons[index]["title1"],style:coupons[index]["textstyle2"],),
                       Text(coupons[index]["title2"],style:coupons[index]["textstyle3"],),

                     ],
                   )

                 ],
               ),
             ),
           );
         }
       )
        ],

      ),



    );
  }
}

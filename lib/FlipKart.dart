// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';

import 'CouponsPage.dart';

class Flipkart extends StatefulWidget {
  const Flipkart({super.key});

  @override
  State<Flipkart> createState() => _FlipkartState();
}

class _FlipkartState extends State<Flipkart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200] ,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        
leading: Icon(Icons.arrow_back_rounded,size:25,
color: Colors.black,),

        title: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("+917306625752",
            style: TextStyle(fontSize: 20,color: Colors.black),
              
            ), Row(
              children: [
                Text("Explore",
                style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                SizedBox(width:5,),
                Icon(Icons.star,color: Colors.yellow,size: 20,),
                Text("Plus",style: TextStyle(fontSize: 15,color: Colors.blue),),
                Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
              ],
            ),
          ],
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color:Colors.white,
                 border: Border.all(color: Colors.black)

                  // color: Colors.black,
                ),

                // color: Colors.black,

                  child:
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(

                children: [
                  Icon(Icons.offline_bolt,size: 20,color: Colors.yellow,),
                  SizedBox(width: 5,),
                  Text("0",style: TextStyle(fontSize: 17,color: Colors.black),),
                ],
          ),

        ),

              ),


            ),
          ),
          SizedBox(width: width*0.02,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
color: Colors.white,
              height: width*0.3,
              width: width*1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.01),
                            border:Border.all(
                              color: Colors.grey,


                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width:width*0.03,),
                              Icon(Icons.one_k_sharp,size: 20,color: Colors.blue,),
                              SizedBox(width: width*0.03,),
                              Text("Orders",style: TextStyle(fontSize: 15,color: Colors.blue),)
                            ],
                          ),

                          height:width*0.1,
                          width: width*0.4,

                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.01),
                            border:Border.all(
                              color: Colors.grey,


                            ),
                          ),

                          child:Row(
                            children: [
                              SizedBox(width: width*0.03),

                              Icon(Icons.favorite_border,size: 25,color: Colors.blue,),
                              SizedBox(width: width*0.03,),
                              Text("Whishlist",style: TextStyle(fontSize: 15,color: Colors.blue),)
                            ],
                          ) ,

                          height: width*0.1,
                          width: width*0.4,


                        ),

                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>CouponsPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.01),
                            border:Border.all(
                              color: Colors.grey,


                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: width*0.03),
                              Icon(Icons.wallet_giftcard,size: 25,color: Colors.blue,),
                              SizedBox(width: width*0.03,),
                              Text("Coupons",style: TextStyle(fontSize: 15,color: Colors.blue),)
                            ],
                          ),
                          height: width*0.1,
                          width: width*0.4,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
                          border:Border.all(
                            color: Colors.grey,


                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*0.03),
                            Icon(Icons.headphones_outlined,size: 25,color: Colors.blue,),
                            SizedBox(width: width*0.03,),
                            Text("Help Center",style: TextStyle(fontSize: 15,color: Colors.blue),)
                          ],
                        ),
                        height: width*0.1,
                        width: width*0.4,
                      )
                    ],
                  )


                ],
              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height:width*0.2 ,
              width: width*1,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image(image: NetworkImage("https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-12/256/mail-message-send-icon.png"),),
                  ),
          SizedBox(width:width*0.015,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(

                children: [
                  Text("Add/Verify your Email",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w800),),
                  SizedBox(width: width*0.02,),
                  CircleAvatar(radius: width*0.01,backgroundColor: Colors.red,)
                ],
              ),
              Text("Get latest updates of your order",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w800),)
            ],

),
        Container(
          height: width*0.08,
          width: width*0.14,
          child: Center(child: Text("Update",style: TextStyle(fontSize: 15,color: Colors.white),)),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(width*0.01)
          ),


        )        ],

              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
padding: EdgeInsets.all(width*0.03),
              height:width*0.40,
              width: width*1,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Credit Options",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  SizedBox(height:width*0.03 ,),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

                     children: [

                       Row(
                         children: [
                           Icon(Icons.monetization_on,size: 25,color: Colors.blue,),
                           SizedBox(width: width*0.03),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [

                               Text("Flipkart Pay Later"),
                               SizedBox(height: width*0.02,),

                               Text("Get 10,000* Worth Time Prime benifit")
                             ],
                           ),
                         ],
                       ),

                       Icon(Icons.arrow_forward_ios_sharp,size:15,)

                     ],
                  )

                ],


              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              color: Colors.white,
              height: width*0.8,
              width: width*1,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("Account Settings",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color:Colors.black ),),
                  SizedBox(height:width*0.03 ,),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                     Row(
                       children: [
                         Icon(Icons.four_k_plus,size:25,color: Colors.blue,),
                         SizedBox(width: width*0.03,),
                         Text("Flipkart Plus",style: TextStyle(fontSize:15),),
                       ],
                     ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Edit Profile",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.credit_card_outlined,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Flipkart Plus",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Row(
                        children: [
                          Icon(Icons.location_on,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Saved Addresses",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
Row(
  children: [
    Icon(Icons.language,size:25,color: Colors.blue,),
    SizedBox(width: width*0.03,),
    Text("Select Language",style: TextStyle(fontSize:15),),
  ],
),


                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                     Row(
                       children: [
                         Icon(Icons.notification_important,size:25,color: Colors.blue,),
                         SizedBox(width: width*0.03,),
                         Text("Notification Setting",style: TextStyle(fontSize:15),),
                       ],
                     ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),







                ],
              ),


            ),
            SizedBox(height: width*0.03,),
Container(
  color: Colors.white,
  height: width*0.4,
  width: width*1,
padding: EdgeInsets.all(width*0.03),
child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("My Activity",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w800),),
SizedBox(height: width*0.03,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(Icons.rate_review_sharp,size:25,color: Colors.blue,),
            SizedBox(width: width*0.03,),
            Text("Review",style: TextStyle(fontSize:15),),
          ],
        ),

        Icon(Icons.arrow_forward_ios_sharp,size: 20,)
      ],
    ),
    SizedBox(height: width*0.03,),
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(Icons.question_answer,size:25,color: Colors.blue,),
            SizedBox(width: width*0.03,),
            Text("Question Answer",style: TextStyle(fontSize:15),),
          ],
        ),

        Icon(Icons.arrow_forward_ios_sharp,size: 20,)
      ],
    ),
  ],
  
),
),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.4,
              width: width*1,
              color: Colors.white,
padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Earn with Flipkart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  SizedBox(height: width*0.03,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Flip Creator Studio",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.card_giftcard_rounded,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Sell on Flipkart",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.03,),
            Container(
              height: width*0.4,
              width: width*1,
              color: Colors.white,
              padding: EdgeInsets.all(width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Earn with Flipkart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  SizedBox(height: width*0.03,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.rate_review_sharp,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Terms,Policies And Licenses",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                  SizedBox(height: width*0.03,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.question_mark,size:25,color: Colors.blue,),
                          SizedBox(width: width*0.03,),
                          Text("Browser FAQs",style: TextStyle(fontSize:15),),
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios_sharp,size: 20,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: width*0.07),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(width*0.01),
  color: Colors.white
),
                height: width*0.1,
                width: width*1,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Log Out",style: TextStyle(fontSize: 18,color: Colors.blue),)
                  ],
                ),

              ),
            ),
            SizedBox(height: width*0.07,)


          ],
        ),
      ),

    );
  }
}

// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:newf_flutter/main.dart';
// //
// // class TotalPage extends StatefulWidget {
// //   const TotalPage({super.key});
// //
// //   @override
// //   State<TotalPage> createState() => _TotalPageState();
// // }
// //
// // class _TotalPageState extends State<TotalPage> {
// //   List image=[
// //     "assets/images/batman2.jpg",
// //     "assets/images/tesla.jpeg",
// //     "assets/images/game zone.jpg"
//
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar:AppBar(
// //      actions: [
// //        PopupMenuButton(itemBuilder: (context){
// //          return[
// //          PopupMenuItem(child: Text("PROFILE")),
// //            PopupMenuItem(child: Row(
// //              children: [
// //                Icon(Icons.add),
// //                Text("edit"),
// //
// //              ],
// //            )),
// //            PopupMenuItem(child: Text("nscu")),
// //            PopupMenuItem(child: Text("nscu")),
// //            PopupMenuItem(child: Text("nscu")),
// //          ];
// //        })
// //      ],
// //       ),
// //
// //
// //       body: Container(
// //         height: width*2,
// //         width: width*1,
// //         color: Colors.greenAccent,
// //
// child: Column(
//   children: [
//     SizedBox(height: width*0.05,),
//     CarouselSlider.builder(
//       itemCount: image.length,
//       itemBuilder: (BuildContext context, int index, int realIndex) {
//          return Container(
//           height: width*0.6,
//           width: width*0.9,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(image[index]),fit: BoxFit.fill
//             ),
//             borderRadius: BorderRadius.circular(width*0.03),
//             color: Colors.black,
//           ),
//           margin: EdgeInsets.all(width*0.03),
//
//         );
//       }, options:CarouselOptions(
//       autoPlay: true,
//       autoPlayAnimationDuration: Duration(seconds: 3),
//       viewportFraction: 1
//     ),
//
//
//
//     ),
//     Column(
// children: [
//   Row(
//     children: [
//       Radio(
//           value: "player" ,
//           groupValue: "football",
//           onChanged: (value){
//             setState(() {
//               football=value!;
// //             });
// //           }
// //
// //     ],
// //   )
// // ],
// //     )
// //
// //   ],
// //
// //
// // ),
// //
// //
// //       ),
// //     );
// //   }
// // }

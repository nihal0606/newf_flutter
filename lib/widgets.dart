import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';
import 'dart:io';

class widgetsPage extends StatefulWidget {
  const widgetsPage({super.key});

  @override
  State<widgetsPage> createState() => _widgetsPageState();
}

class _widgetsPageState extends State<widgetsPage> {
  String? imageUrl;
  var file;
  var file1;
  pickFile(ImageSource source) async {
    final imageFile =
        await ImagePicker.platform.pickImage(source: source);
    file = File(imageFile!.path);
    if (mounted) {
      setState(() {
        file = File(imageFile.path);
      });
    }
  }


  String gender = "male";
  bool tick1 = false;
  bool tick2 = false;
  bool select = true;
  bool select1 = true;
  bool select2 = true;
  bool select3 = true;
  bool tap = true;
  int count = 0;
  bool toggle = false;
  String? dropdownvalue;

  var items = [
    "MAKRI GOPALAN",
    "UNNI KANNAmjdgkutdskN HAJI",
    "DASHA MOOLAM",
    "SHAJI PAAPPAN"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("PROFILE")),
                PopupMenuItem(
                    child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    Text("EDIT"),
                  ],
                )),
                PopupMenuItem(child: Text("TOOLS")),
                PopupMenuItem(child: Text("INFO")),
                PopupMenuItem(child: Text("SETTINGS"))
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RadioMenuButton(
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child:Text("Male"),
                  ),
                  RadioMenuButton(
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child: Text("Female"),
                  ),
                  Text("Female"),
                  RadioMenuButton(
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                    child: Text("Other"),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.05,
              ),
              tap == true
                  ? SizedBox(
                      height: width * 0.08,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            select = true;
                            select1 = false;
                            select2 = false;
                            select3 = false;
                            setState(() {});
                          },
                          child: Container(
                            height: width * 0.08,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: select == true
                                    ? Colors.green
                                    : Colors.grey[200],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03)),
                            child: Center(
                                child: Text(
                              "A",
                              style: TextStyle(
                                color: select == true
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            select = false;
                            select1 = true;
                            select2 = false;
                            select3 = false;
                            setState(() {});
                          },
                          child: Container(
                            height: width * 0.08,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: select1 == true
                                    ? Colors.green
                                    : Colors.grey[200],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03)),
                            child: Center(
                                child: Text(
                              "B",
                              style: TextStyle(
                                  color: select1 == true
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            select = false;
                            select1 = false;
                            select2 = true;
                            select3 = false;
                            setState(() {});
                          },
                          child: Container(
                            height: width * 0.08,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: select2 == true
                                    ? Colors.green
                                    : Colors.grey[200],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03)),
                            child: Center(
                                child: Text(
                              "C",
                              style: TextStyle(
                                  color: select2 == true
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            select = false;
                            select1 = false;
                            select2 = false;
                            select3 = true;
                            setState(() {});
                          },
                          child: Container(
                            height: width * 0.08,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                color: select3 == true
                                    ? Colors.green
                                    : Colors.grey[200],
                                borderRadius:
                                    BorderRadius.circular(width * 0.03)),
                            child: Center(
                                child: Text(
                              "D",
                              style: TextStyle(
                                  color: select3 == true
                                      ? Colors.white
                                      : Colors.black),
                            )),
                          ),
                        ),
                      ],
                    ),
              SizedBox(
                height: width * 0.05,
              ),
              Row(
                children: [
                  Checkbox(
                    value: tick1,
                    onChanged: (value) {
                      setState(() {
                        tick1 = value!;
                      });
                    },
                  ),
                  Text("A"),
                  Checkbox(
                    value: tick2,
                    onChanged: (value) {
                      setState(() {
                        tick2 = value!;
                      });
                    },
                  ),
                  Text("B")
                ],
              ),
              SizedBox(height: width * 0.1),
              InkWell(
                onTap: () {
                  tap = !tap;
                  setState(() {});
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "CLEAR",
                      style: TextStyle(
                          fontSize: width * 0.03, color: Colors.white),
                    ),
                  ),
                  height: width * 0.08,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                ),
              ),
              SizedBox(
                height: width * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: width * 0.08,
                      backgroundColor: Colors.red,
                      child: InkWell(
                          onTap: () {
                            count++;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ))),
                  Text(count.toString()),
                  CircleAvatar(
                      radius: width * 0.08,
                      backgroundColor: Colors.red,
                      child: InkWell(
                          onTap: () {
                            count <= 0 ? count = 0 : count--;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )))
                ],
              ),
              SizedBox(
                height: width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Are you sure you want exit?"),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Container(
                                        height: width * 0.08,
                                        width: width * 0.2,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(
                                                width * 0.03)),
                                        child: Center(
                                            child: Text(
                                          "yes",
                                          style: TextStyle(color: Colors.white),
                                        )))),
                                InkWell(
                                    onTap: () {},
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                          height: width * 0.08,
                                          width: width * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      width * 0.03)),
                                          child: Center(
                                              child: Text(
                                            "no",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ))),
                                    ))
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: width * 0.08,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            width * 0.03,
                          )),
                      child: Center(
                          child: Text("ALRT D",
                              style: GoogleFonts.outfit(
                                  fontSize: width * 0.04,
                                  color: Colors.white))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(width * 0.07),
                                topRight: Radius.circular(width * 0.07))),
                        context: context,
                        builder: (context) {
                          return Container(
                            height: width * 1,
                            width: width * 1,
                          );
                        },
                      );
                    },
                    child: Container(
                      height: width * 0.08,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            width * 0.03,
                          )),
                      child: Center(
                        child: Text("Btm Sht",
                            style: TextStyle(
                                fontSize: width * 0.04, color: Colors.white)),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          toggle = !toggle;
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.08,
                          width: width * 0.17,
                          decoration: BoxDecoration(
                              color: toggle ? Colors.green : Colors.grey[400],
                              borderRadius:
                                  BorderRadius.circular(width * 0.05)),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        left: toggle ? width * 0.08 : width * 0.01,
                        right: toggle ? width * 0 : width * 0.08,
                        child: InkWell(
                          onTap: () {
                            toggle = !toggle;
                            setState(() {});
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                            height: width * 0.08,
                            width: width * 0.08,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                          duration: Duration(milliseconds: 300),
                          left: toggle ? width * 0.01 : width * 0.08,
                          top: width * 0.02,
                          child: Text(
                            toggle ? "ON" : "OFF",
                            style: TextStyle(
                                fontSize: width * 0.03,
                                color: toggle ? Colors.white : Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.black,
                    height: width * 0.2,
                    width: width * 0.2,
                    child: Image.asset("assets/images/gift (1).gif"),
                    // child: Lottie.asset("images/batman.gif"),
                  ),
                  Container(
                    color: Colors.black,
                    height: width * 0.2,
                    width: width * 0.2,
                    child: Lottie.asset("assets/images/bat.json"),
                    // child: Lottie.asset("images/batman.gif"),
                  ),
                  Container(
                    // color: Colors.black,
                    height: width * 0.05,
                    width: width * 0.05,
                    child: SvgPicture.asset("assets/images/product.svg"),
                    // child: Lottie.asset("images/batman.gif"),
                  ),
                  Container(
                    // color: Colors.black,
                    height: width * 0.4,
                    width: width * 0.2,
                    child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWyXl_ES0Jwg7dn_W559ya9pk8X_8B_e9IEQ&usqp=CAU"),
                    // child: Lottie.asset("images/batman.gif"),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Divider(
                color: Colors.purple[500],
                indent: width * 0.09,
                endIndent: width * 0.09,
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Container(
                // height:width * 0.1,
                // width: width * 0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.05),
                    border: Border.all()),
                child: DropdownButton(
                  underline: SizedBox(),
                  hint: Center(
                      child: Text('Select', style: TextStyle(fontSize: 15))),
                  value: dropdownvalue,
                  dropdownColor: Colors.amber,
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Center(
                        child: Text(
                          items,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? lastValue) {
                    setState(() {
                      dropdownvalue = lastValue!;
                    });
                  },
                  isExpanded: true,
                ),
              ),
              SizedBox(height: width*0.05,),

              SizedBox(height: width*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                file!=null? Container(
                  height: width*0.3,
                  width: width*0.3,
                  color: Colors.black,
                  child: Image.file(file,fit: BoxFit.fill),
                ) :
                Container(
                  height: width*0.3,
                  width: width*0.3,
                  color: Colors.black,
                ),
                // file1!=null? Container(
                //   height: width*0.3,
                //   width: width*0.3,
                //   color: Colors.black,
                //   child: Image.file(file1,fit: BoxFit.fill),
                // ) :
                // Container(
                //   height: width*0.3,
                //   width: width*0.3,
                //   color: Colors.black,
                // )
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}


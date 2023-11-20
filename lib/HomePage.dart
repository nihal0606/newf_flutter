import 'package:fl'
    'utter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newf_flutter/FirstPage.dart';
import 'package:newf_flutter/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "TESLA WORLD",
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(color: Colors.black12),
            ),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                )),
            ListTile(
                leading: Icon(
                  Icons.car_crash_outlined,
                  size: 35,
                ),
                title: Text(
                  "TESLA",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
      body: Container(

        child: Column(

          children: [

            SizedBox(height: width*0.15,),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/images/tesla.jpeg"),
            ),
            Text(
              "TESLA",
              style: GoogleFonts.russoOne(fontSize: 30),
            ),
            Text("ELON MUSK", style: TextStyle(fontSize: 25)),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              child: Container(
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size:width*0.07,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text("0618553021",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    SizedBox(
                      width: 12,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      size:width*0.07,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "tesla@gmai.com",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FirstPage()));
                },
                icon:  Icon(

                  Icons.add,
                  size: 40,
                )),
            SizedBox(height: 20),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
                child: Icon(
                  Icons.add_card_sharp,
                  size: 30,
                )),
            GestureDetector(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder:( context)=>FirstPage()));
              },

              child: Container(
                height: width * 0.50,
                width: width*0.30,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
    ();
  }
}

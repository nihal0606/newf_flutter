import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newf_flutter/FirstPage.dart';
import 'package:newf_flutter/FlipKart.dart';
import 'package:newf_flutter/HomePage.dart';
import 'package:newf_flutter/caroselpage.dart';
import 'package:newf_flutter/splashscreen.dart';
import 'package:newf_flutter/tabbarpage.dart';
import 'package:newf_flutter/tabbartwo.dart';
import 'package:newf_flutter/textformpage.dart';
import 'package:newf_flutter/total.dart';
import 'package:newf_flutter/widgets.dart';
import 'bottomnavbar.dart';
import 'grid_task.dart';
import 'gridview_page.dart';

var width;
var heigth;
void main(){
  runApp(FirstApp());
}
class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          // textTheme: GoogleFonts.damionTextTheme()
        ),
        debugShowCheckedModeBanner: false,
        home:widgetsPage(),
      ),
    );
  }
}

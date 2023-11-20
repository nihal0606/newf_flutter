import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newf_flutter/main.dart';
import 'package:newf_flutter/submitpage.dart';

class textFormPage extends StatefulWidget {
  const textFormPage({super.key});

  @override
  State<textFormPage> createState() => _textFormPageState();
}

class _textFormPageState extends State<textFormPage> {
  TextEditingController name_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController address_controller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  RegExp phone_validation = RegExp(r"[0-9]{10}$");
  RegExp email_validation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  RegExp passwordValidator =
      RegExp(r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
  bool password = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: name_controller,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.account_circle_sharp),
                        suffixText: "FLIT",
                        suffixStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.greenAccent),
                        labelText: "NAME",
                        labelStyle: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w500),
                        hintText: "ENTER YOUR NAME",
                        hintStyle: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.purple))),
                    style: TextStyle(
                        fontSize: width * 0.03, fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: phone_controller,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (!phone_validation.hasMatch(value!)) {
                        return "enter valid phone number";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone),
                        // suffixStyle: TextStyle(fontWeight: FontWeight.w400,color: Colors.greenAccent),
                        labelText: "NUMBER",
                        labelStyle: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w500),
                        hintText: "ENTER YOUR NUMBER",
                        hintStyle: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.purple))),
                    style: TextStyle(
                        fontSize: width * 0.03, fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    controller: email_controller,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                        fontSize: width * 0.03, fontWeight: FontWeight.w500),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!email_validation.hasMatch(value!)) {
                        return "enter valid email address";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mail),
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.03),
                        hintText: "ENTER YOUR EMAIL",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 0.03),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.purple))),
                  ),
                  TextFormField(
                      obscureText: password ? false : true,
                      controller: password_controller,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(
                          fontSize: width * 0.03, fontWeight: FontWeight.w500),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (!passwordValidator.hasMatch(value!)) {
                          return "enter password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () {
                                password = !password;
                                setState(() {});
                              },
                              child: Icon(password
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.03),
                          hintText: "ENTER YOUR PASSWORD",
                          hintStyle: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width * 0.03),
                              borderSide: BorderSide(color: Colors.purple)))),
                  TextFormField(
                    controller: address_controller,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    maxLines: 4,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: width * 0.03),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.note),
                        labelText: "ADDRESS",
                        labelStyle: TextStyle(
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w500),
                        hintText: "ENTER YOUR ADDRESS",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.03),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            borderSide: BorderSide(color: Colors.purple))),
                  ),
                  InkWell(
                    onTap: () {
                      if (name_controller.text != "" &&
                          phone_controller.text != "" &&
                          email_controller.text != "" &&
                          password_controller.text != "" &&
                          address_controller.text != ""&&
                           formkey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => submitPage(
                                name: name_controller.text,
                                number: phone_controller.text,
                                email: email_controller.text,
                                password: password_controller.text,
                                address: address_controller.text,
                              ),
                            ));
                      } else {
                        name_controller.text == ""
                            ? ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("please enter your name")))
                            : phone_controller.text == ""
                                ? ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                    content: Text("please enter your number"),
                                  ))
                                : email_controller.text == ""
                                    ? ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            content: Text(
                                                "please enter your email")))
                                    : password_controller.text == ""
                                        ? ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "plaese enter your password")))
                                        : address_controller.text==""?ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    "please enter your address"))):
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your valid details")));
                      }

                      // name_controller.clear();
                      // phone_controller.clear();
                      //
                      // email_controller.clear();
                      //              password_controller.clear();
                      //             address_controller.clear();
                    },
                    child: Container(
                      height: width * 0.1,
                      width: width * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Center(
                          child: Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

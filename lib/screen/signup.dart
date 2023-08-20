import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:plantify_ecommerce_app/Widgets/custom_button.dart';
import 'package:plantify_ecommerce_app/Widgets/custom_passwordtextformfield.dart';
import 'package:plantify_ecommerce_app/Widgets/custom_text.dart';
import 'package:plantify_ecommerce_app/Widgets/custom_textformfield.dart';

import 'package:plantify_ecommerce_app/screen/login.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  late UserCredential auth;
  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  static String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = new RegExp(p);

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  bool loading = false;
  /*validation function start here */
  void validation() {
    if (email.text.isEmpty && password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("All Field is Empty"),
      ));
    }
    if (email.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email is Empty"),
      ));
    } else if (!regExp.hasMatch(email.text)) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email is Not Valid"),
      ));
    } else if (password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password is Empty"),
      ));
    } else if (password.text.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password is Too Short "),
      ));
    } else {
      signup();
    }
  }

  /*validation function end here */

  String userIdErrorText = "User Email can not be empty";
  /*signup start here*/
  void signup() async {
    setState(() {
      loading = true;
    });
    try {
      auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      String message = "Please Check Internet";
      if (e.message != null) {
        message = e.message.toString();
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
      setState(() {
        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }

    setState(() {
      loading = false;
    });
  }

/*signup end here*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffold,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
/*first portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff0D986A),
                      )),
                ),
              ],
            ),

/*first portion end here*/
            SizedBox(
              height: 20,
            ),
/*second portion start here*/
            Row(
              children: [
                Image.asset('assets/images/IconImg.png'),
                SizedBox(
                  width: 10,
                ),
                CustomText(
                  title: 'Plantify',
                  clr: Color(0xff0D986A),
                  font: FontWeight.w700,
                  size: 22,
                ),
              ],
            ),
/*second portion end here*/
            SizedBox(
              height: 20,
            ),
/*third portion start here*/
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  title: 'Login',
                  clr: Color(0xff0D986A),
                  font: FontWeight.w700,
                  size: 36,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  title:
                      'Masukan NISN dan password untukmemulai\n belajar sekarang',
                  clr: Color(0xff0D986A),
                  font: FontWeight.w400,
                  size: 14,
                ),
              ],
            ),

/*third portion end here*/
            SizedBox(
              height: 20,
            ),
/*forth portion start here*/

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  title: 'Username/Email',
                  clr: Color(0xff8F92A1),
                  font: FontWeight.w500,
                  size: 12,
                ),
                SizedBox(
                  height: 10,
                ),
                /*Username/Email TextField start here*/
                CustomTextFormField(
                  controller: email,
                  title: 'Username',
                  prefix_icon: Icons.looks,
                ),
                /*Username/Email TextField end here*/
              ],
            ),

/*forth portion end here*/
            SizedBox(
              height: 20,
            ),
            /*fifth portion start here*/

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  title: 'Password',
                  clr: Color(0xff8F92A1),
                  font: FontWeight.w500,
                  size: 12,
                ),
                SizedBox(
                  height: 10,
                ),
                /*Password TextField start here*/
                CustomPasswordTextFormField(
                  controller: password,
                  title: "Password",
                  prefix_icon: Icons.looks,
                  suffix_icon: Icons.visibility_off,
                ),
                /*Password TextField end here*/
              ],
            ),

/*fifth portion end here*/
            SizedBox(
              height: 5,
            ),
/*sixth portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  title: 'Forget Password',
                  clr: Color(0xff0D986A),
                  font: FontWeight.w400,
                  size: 14,
                ),
              ],
            ),
/*sixth portion end here*/
            SizedBox(
              height: 10,
            ),
/*seventh portion start here*/
            CustomButton(
                name: 'SIGN UP',
                onPressed: (() {
                  validation();
                })),
/*seventh portion end here*/
            SizedBox(
              height: 10,
            ),
            /*Last Portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    ' Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff0D986A),
                    ),
                  ),
                ),
              ],
            ),
            /*Last Portion end here*/
          ],
        ),
      ),
    );
  }
}

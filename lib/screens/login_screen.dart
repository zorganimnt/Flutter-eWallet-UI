import 'dart:ui';

import 'package:dawercodeapp/constants/colors.dart';
import 'package:dawercodeapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.1)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Sign in your ID",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: whiteColor,
                            fontSize: 28)),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildLoginMethodChoice(),
                    const SizedBox(
                      height: 15,
                    ),
                    _buildTextFormField(),
                    const SizedBox(
                      height: 40,
                    ),
                    _buildButtonSignIn(context),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Need help? ",
                          style: TextStyle(
                              fontFamily: 'CircularStd',
                              color: whiteColor,
                              fontSize: 13),
                        ),
                        Text("Click here.",
                            style: TextStyle(
                                fontFamily: 'CircularStd',
                                color: pinkColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  InkWell _buildButtonSignIn(BuildContext context) {
    return InkWell(
      onTap: (() {
        Get.to(const HomeScreen());
      }),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: pinkColor),
        height: 40,
        width: MediaQuery.of(context).size.width / 3,
        child: const Center(
            child: Text(
          "Sign In",
          style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  Padding _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        cursorColor: whiteColor,
        style: const TextStyle(fontFamily: 'CircularStd', color: whiteColor),
        decoration: InputDecoration(
          iconColor: whiteColor,
          prefixIcon: const Icon(Icons.phone_iphone_rounded),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          fillColor: whiteColor,
          hintStyle: TextStyle(
              color: whiteColor.withOpacity(0.4), fontFamily: 'CircularStd'),
          labelStyle: const TextStyle(
            fontFamily: 'CircularStd',
            color: pinkColor,
          ),
          hintText: "+216 XX XXX XXX",
        ),
      ),
    );
  }

  Container _buildLoginMethodChoice() {
    return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 45,
          width: 85,
          child: const Icon(
            Icons.phone_iphone_rounded,
            color: whiteColor,
          ),
          decoration: BoxDecoration(
              color: pinkColor, borderRadius: BorderRadius.circular(20)),
        ),
        Container(
          height: 45,
          width: 85,
          child: Icon(
            Icons.password_rounded,
            color: pinkColor,
          ),
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
        ),
      ]),
    );
  }
}

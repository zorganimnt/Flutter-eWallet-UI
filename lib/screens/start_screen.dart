import 'package:dawercodeapp/constants/colors.dart';
import 'package:dawercodeapp/screens/home_screen.dart';
import 'package:dawercodeapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.wallet,
              color: whiteColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "PayTaleb",
              style: TextStyle(
                fontFamily: 'CircularStd',
                color: whiteColor,
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white.withOpacity(0.15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text(
                        "Easy way to manage",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: whiteColor,
                            fontSize: 27),
                      ),
                      const Text(
                        "Your e-Wallet",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: whiteColor,
                            fontSize: 27),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Manage your every penny and",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: Colors.white38,
                            fontSize: 15.5),
                      ),
                      const Text(
                        "Transaction with the ease",
                        style: TextStyle(
                            fontFamily: 'CircularStd',
                            color: Colors.white38,
                            fontSize: 15.5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap:(() {
                          Get.to(LoginScreen());
                        }),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: pinkColor,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 27,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/paytaleb.png",
                  height: MediaQuery.of(context).size.height / 2.15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dawercodeapp/constants/colors.dart';
import 'package:dawercodeapp/screens/send_money.dart';
import 'package:dawercodeapp/widgets/history_widget.dart';
import 'package:dawercodeapp/widgets/service_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(onPressed: (() => {}), child: Icon(Icons.qr_code_scanner_rounded),backgroundColor: bgColor,),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              children: [
                _buildHeadContent(),
                _buildCreditCard(context),
                _buildServiceChoice(),
                const SizedBox(
                  height: 35,
                ),
                const HistoryWidget(
                  image: "assets/images/poste.jpg",
                  text: "ATM - Withdrawal",
                  date: "12:03 14 Nov 2022",
                  amount: "-200,00 DT",
                  amountColor: pinkColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const HistoryWidget(
                  image: "assets/images/oucc.png",
                  text: "OUCC - Bourse Tranche 1",
                  date: "12:03 12 Nov 2022",
                  amount: "+480,00 DT",
                  amountColor: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.analytics_rounded,
          ),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.wallet_rounded), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded), label: ''),
      ],
      currentIndex: 0,
      selectedItemColor: pinkColor,
      unselectedIconTheme: const IconThemeData(size: 30),
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedItemColor: const Color.fromARGB(255, 105, 105, 105),
      onTap: ((value) {}),
    );
  }

  Row _buildServiceChoice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        InkWell(
          onTap:() => Get.to(SendScreen()),
          child: ServiceWidget(
            serviceName: "Send",
            icon: Icons.send,
            colorIcon: Colors.lightBlue,
            circleColor: Colors.blueAccent,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        ServiceWidget(
          serviceName: "Pay",
          icon: Icons.payment_rounded,
          colorIcon: Color.fromARGB(255, 248, 115, 106),
          circleColor: Colors.redAccent,
        ),
        SizedBox(
          width: 12,
        ),
        ServiceWidget(
          serviceName: "Withdrawal",
          icon: Icons.attach_money_outlined,
          colorIcon: Color.fromARGB(255, 143, 190, 89),
          circleColor: Colors.green,
        ),
        SizedBox(
          width: 12,
        ),
        ServiceWidget(
          serviceName: "Voucher",
          icon: Icons.percent,
          colorIcon: Color.fromARGB(255, 225, 172, 103),
          circleColor: Colors.orangeAccent,
        ),
      ],
    );
  }

  Stack _buildCreditCard(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/credit.png",
          height: MediaQuery.of(context).size.height / 2.25,
        ),
        const Positioned(
          top: 150,
          left: 25,
          child: Text(
            "xxxx       xxxx      xxxx       9800",
            style: TextStyle(
                fontFamily: 'CircularStd',
                fontSize: 18,
                color: Colors.black38,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Positioned(
          top: 65,
          left: 25,
          child: Text(
            "ZORGANI MONTASSAR",
            style: TextStyle(
                fontFamily: 'CircularStd',
                fontSize: 16,
                color: Colors.black38,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 190,
          left: 25,
          child: Column(
            children: [
              const Text(
                "Avaible Balance",
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
              Text(
                "560,00 DT",
                style: TextStyle(
                    fontFamily: 'CircularStd',
                    fontSize: 16,
                    color: bgColor.withOpacity(0.9),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }

  Row _buildHeadContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      color: Colors.white38,
                      fontSize: 16.5),
                ),
              ],
            ),
            //SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Zorgani Montassar",
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      color: whiteColor,
                      fontSize: 20),
                ),
              ],
            )
          ],
        ),
        InkWell(
          onTap: () {},
          child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.withOpacity(0.4),
              child: const Icon(
                Icons.person_outline,
                color: whiteColor,
                size: 20,
              )),
        )
      ],
    );
  }
}


import 'package:dawercodeapp/constants/colors.dart';
import 'package:dawercodeapp/widgets/custom_tex_widget.dart';
import 'package:flutter/material.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
    ), 
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomText(text: "Send money with safty", 
          size: 20,
          color: whiteColor,),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_iphone_rounded), 
              hintText: "+216 XX XXX XXX", 
              hintStyle: TextStyle(
                color: whiteColor.withOpacity(0.5)
              ), 
            )
          ), 
          CircleAvatar(
            child: Icon(Icons.send_rounded),
          )
        ],
      ),
    ),);
  }
}

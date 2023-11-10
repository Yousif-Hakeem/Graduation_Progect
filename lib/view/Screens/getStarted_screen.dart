import 'package:flutter/material.dart';
import 'package:graduation_project/view/Screens/Login_screen.dart';
import 'package:graduation_project/view/custom_widgets/custom_button.dart';
import 'package:graduation_project/view/custom_widgets/custom_scaffold.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 20),
            child: Image.asset(
              'images/Logo.png',
              alignment: Alignment.topRight,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.asset('images/Success Account Ilustration.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Your account has been set up!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Center(
              child: Text(
                "We have customized feeds according to your ",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'preferences',
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 270,
          ),
          CustomButton(
              text: 'Get Started',
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              })
        ],
      ),
    );
  }
}

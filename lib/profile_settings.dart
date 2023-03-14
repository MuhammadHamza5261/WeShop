import 'main.dart';
import 'package:flutter/material.dart';
class profile_settings extends StatefulWidget {
  const profile_settings({Key? key}) : super(key: key);

  @override
  State<profile_settings> createState() => _profile_settingsState();
}

class _profile_settingsState extends State<profile_settings> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              Container(
                child: Icon(Icons.arrow_back_ios_new),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0,),
                child: const Text('Profile Settings',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset('Assests/Images/Ellipse (2).png'),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:weshop/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'Sign_In.dart';
import 'getstarted.dart';


Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
  runApp(MyApp());
}

//  void main() {
//    // WidgetsFlutterBinding.ensureInitialized();
//    // await Firebase.initializeApp();
//   runApp(MyApp());
// }



///stl
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.brown,
        // backgroundColor: Colors.white,
      ),
      home: MyappSTF(),
    );
  }
}
///stf
class MyappSTF extends StatefulWidget {
  const MyappSTF({Key? key}) : super(key: key);

  @override
  State<MyappSTF> createState() => _MyappSTFState();
}

class _MyappSTFState extends State<MyappSTF> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('wnincw'),
      // ),
      body: SafeArea(
        child: Column(
          children: [
           Container(
             margin: EdgeInsets.only(top: 158.0,left: 98.0,right: 98.0,),
             child: Image.asset("Assests/Images/Frame.png"),
           ),
            SizedBox(
              height: 48,
            ),
            ///2nd row
            Container(
              margin: EdgeInsets.only(left: 16.0,right: 16.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('Welcome',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(20, 20, 20, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),
                    child: Text('to',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(20,20,20,1),
                    ),
                  ),
                  ),
                ],
              ),
            ),
            ///3rd row
            Container(
              margin: EdgeInsets.only(left: 16.0,right: 16.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('the',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(20, 20, 20, 1),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0,),
                    child: Text('WeShop',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0,173,25,1),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///4th row
            Container(
              margin: EdgeInsets.only(left: 16.0,top: 16.0,),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text('Simple Shopping list app for pantry check',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color.fromRGBO(100, 100, 100, 1),
                          ),
                        ),
                      ),
                      Container(
                        child: Text('and quick shopping. Make list in seconds',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color.fromRGBO(100, 100, 100, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 53.0,),
                        child: Text('and share it and see changes live.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color.fromRGBO(100, 100, 100, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            ///5th row
            Container(
              width: MediaQuery.of(context).size.width *0.9,
              height: MediaQuery.of(context).size.height *0.05,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0,173,25,1),
                ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => getstarted()));
                  },
                  child: Text('Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 1),


                    ),
                  ),
            ),

            ),
            SizedBox(
              height: 7.5,
            ),
            Container(
              width: width*0.9,
              height: height*0.05,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  ///color: Color.fromRGBO(255, 255, 255, 1),
                  side: BorderSide(color: Color.fromRGBO(0, 173,25,1)),
                  onSurface: Colors.black,
                  backgroundColor: Colors.transparent,
                  primary: Color.fromRGBO(0,173,25,1),
                ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => signin1()));
                  },
                  child: Text('I\'m already a member',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0,173,25,1),
                    ),
                  )),
            ),

          ],
        ),
      ),

    );

  }
}

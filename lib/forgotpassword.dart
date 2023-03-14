

import 'package:weshop/verifycode.dart';
import 'package:email_otp/email_otp.dart';
// import 'package:emailotp/otp_screen.dart';
import 'main.dart';
import 'Sign_In.dart';
import 'main.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';
///stl
class forgotpassword extends StatelessWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: forgotSTF(),
    );
  }
}
///stf
class forgotSTF extends StatefulWidget {
  const forgotSTF({Key? key}) : super(key: key);

  @override
  State<forgotSTF> createState() => _forgotSTFState();
}
class _forgotSTFState extends State<forgotSTF> {
  ///Text editing controller
  final TextEditingController emailcontroller = TextEditingController();
  EmailOTP myauth = EmailOTP();
  ///function to generate otp




  late double height;
  late double width;

  // get myauth => true;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            /// 1st row arrow icon
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => signin1()));
                      },
                      icon:Icon( Icons.arrow_back_outlined,size: 25.0,color: Color.fromRGBO(52,107,33,1), ),
                    ),
                  ),
                ],
              ),
            ),
            ///2nd row forgot password text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 19.0,left:15.0, ),
                  child: Text('Forgot Password',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(20,20,20,1),
                    ),
                  ),
                ),
              ],
            ),
            ///3rd row text
            SizedBox(
              height: 56.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0,right: 16.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('Enter email associated with your account and well send',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(100,100,100,1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///  4th row
            SizedBox(
              height: 2.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0,right: 16.0,),
              child: Row(
                children: [
                  Container(
                    child: Text('you a verification code to reset your password',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(100,100,100,1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///5th row email
            SizedBox(
              height: 10.0,
            ),
            // Container(
            //   child:  TextFormField(
            //     controller: emailcontroller,
            //     decoration: InputDecoration(
            //       // prefixIcon: const Icon(
            //       //   Icons.mail,
            //       // ),
            //       suffixIcon: IconButton(
            //           // onPressed: () async {
            //           //   myauth.setConfig(
            //           //       appEmail: "hamzaconzummate29@gmail.com",
            //           //       appName: "Email OTP",
            //           //       userEmail: emailcontroller.text,
            //           //       otpLength: 6,
            //           //       otpType: OTPType.digitsOnly);
            //           //   if (await myauth.sendOTP() == true) {
            //           //     ScaffoldMessenger.of(context)
            //           //         .showSnackBar(const SnackBar(
            //           //       content: Text("OTP has been sent"),
            //           //     ));
            //           //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => verifycode()));
            //           //   } else {
            //           //     ScaffoldMessenger.of(context)
            //           //         .showSnackBar(const SnackBar(
            //           //       content: Text("Oops, OTP send failed"),
            //           //     ));
            //           //   }
            //           // },
            //           icon: const Icon(
            //             Icons.send_rounded,
            //             color: Colors.teal,
            //           ), onPressed: () {  },
            //       ),
            //       hintText: "Email Address",
            //       border: const OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(15.0)),
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: width*0.93,
              height: height*0.053,
              child:   TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value!)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
              // child: TextFormField(
              //   keyboardType: TextInputType.emailAddress,
              //   controller: emailcontroller,
              //   // autovalidateMode: AutovalidateMode.onUserInteraction,
              //   cursorColor: Color.fromRGBO(100,100,100,1),
              //   decoration: InputDecoration(
              //     contentPadding: EdgeInsets.only(left: 17.0,top:10.0,),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide( color: Color.fromRGBO(100,100,100,1), width: 1.2),
              //     ),
              //     hintText: 'Email',
              //   ),
              // ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },
            ),
            ///6th row continue btn
            SizedBox(
              height: 17.0,
            ),
            Container(
              margin: EdgeInsets.only(),
              width: width*0.93,
              height: height*0.053,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0,173,25,1),
                ),
                onPressed: () async {
                  myauth.setConfig(
                      appEmail: "hamzaconzummate29@gmail.com",
                      appName: "Email OTP",
                      userEmail: emailcontroller.text,
                      otpLength: 6,
                      otpType: OTPType.digitsOnly);

                  if (await myauth.sendOTP() == true) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content: Text("OTP has been sent"),
                    ));
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => verifycode()));
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => Otp(otpController: )));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content: Text("Oops, OTP send failed"),
                    ));
                  }
                },


                child: Text('Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255,255,255,1),

                  ),
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}

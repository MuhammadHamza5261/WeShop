
import 'dart:convert';
import 'dart:developer';
// import 'package:http/http.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'Sign_In.dart';
import 'datamodel.dart';

import 'loginwithfacebook.dart';
import 'logincontroller.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'mylist.dart';
import 'otp_screen.dart';
///stf
class getstarted extends StatefulWidget {

  const getstarted({Key? key}) : super(key: key);

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: getstartedSTF(),
    );
  }
}
///stf
class getstartedSTF extends StatefulWidget {


  const getstartedSTF({Key? key}) : super(key: key);

  @override
  State<getstartedSTF> createState() => _getstartedSTFState();
}


class _getstartedSTFState extends State<getstartedSTF> {


  ///yaha sa last
  loginPageUI()
  {
    return Consumer<loginController>(builder: (context,model,child){
      if(model.usersDetails != null){
        return Center(
          child: alreadyLoggedInScreen(model),
        );
      }else{
        return notLoggedInScreen();
      }
    });
  }
  alreadyLoggedInScreen(loginController model){
    return Column(
      children: [
        Container(
          child: CircleAvatar(
            backgroundImage: Image.network(model.usersDetails!.photoURL ?? "").image,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text(
              model.usersDetails!.displayName ?? "",
              style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),
            ),
          ],
        ),
        ActionChip(
          avatar: Padding(
            padding: EdgeInsets.only(left: 15.0,right: 15.0,),
            child: Icon(Icons.login),
          ),
          label: Padding(
            padding: EdgeInsets.only(left: 15.0,right: 15.0,),
            child: Text("logout",style: TextStyle(color: Colors.white),),
          ),
          onPressed: (){
            Provider.of<loginController>(context, listen: false).allowUserToSignOut();
          },
        ),
      ],
    );

  }
  notLoggedInScreen(){
    return Center(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Image.asset('Assests/Images/1.png'),
            ),
            Container(
              child: GestureDetector(
                child: Image.asset('Assests/Images/1.png'),
                onTap: (){
                  Provider.of<loginController>(context, listen: false).allowUserToSignInWithFB();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///fb work
  String welcome = "Facebook";
  Map<String,dynamic>? _userData;
  Future <UserCredential> signInFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login(permissions: ['email,']);
    if(loginResult == LoginStatus.success){
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
    }else{
      print(loginResult.message);
    }
    setState(() {
      welcome = _userData!['email'];
    });

    final OAuthCredential oAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(oAuthCredential);

  }
  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if(result.status == LoginStatus.success){
      // Create a credential from the access token
      final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return null;
  }











  late datamodel _datamodel;




  ///cONTROLLERS FOR CONTAROLL THE FIELD

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  final GoogleSignIn _googleSignIn = GoogleSignIn();



  ///Create function for registration with the help of internet
  late double width;
  late double height;

  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: Container(
        child: Column(
          children: [
            ///1St row icon
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      icon:Icon( Icons.arrow_back_outlined,size: 25.0, color: Color.fromRGBO(52,107,33,1), ),
                    ),
                  ),
                ],
              ),
            ),
            ///2nd row text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => getstarted2()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 17.0,left:15.0,),
                    child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(20,20,20,1),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ///full name input field
            SizedBox(
              height: 36.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: namecontroller,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                  ),
                  hintText: 'Full Name',
                ),
              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },
            ),
            ///email input fields
            SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: emailcontroller,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                  ),
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },
            ),
            ///password input fields
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                controller: passwordcontroller,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: _obscureText,
                cursorColor:Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.0,left: 10.0,),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                    ),
                    hintText: 'Password',
                    suffixIcon:  GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: new Icon(
                        _obscureText ?
                        Icons.visibility_off: Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                ),
                // validator: MultiValidator(
                //     [
                //       RequiredValidator(
                //           errorText: 'Please enter email')
                //     ]
                //
                // ),


              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },

            ),
            ///5th row confirm password field
            Container(
              margin: EdgeInsets.only(top: 17.0,),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: TextFormField(
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: _obscureText2,
                cursorColor: Color.fromRGBO(100,100,100,1),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10.0,left: 10.0,),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(0, 173, 25, 1), width: 1.2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(100,100,100,1), width: 1.2),
                    ),
                    hintText: 'Confirm Password',
                    suffixIcon:  GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText2 = !_obscureText2;
                        });
                      },
                      child: new Icon(
                        _obscureText2 ?
                        Icons.visibility_off: Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                ),
                // validator: MultiValidator(
                //     [
                //       RequiredValidator(
                //           errorText: 'Please enter email')
                //     ]
                //
                // ),


              ),
              // validator: (password) {
              //   if (isPasswordValid(password)) return null;
              //   else
              //     return 'Enter a valid password';
              // },

            ),
            ///Get started btn
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.only(),
              width: MediaQuery.of(context).size.width*0.93,
              height: MediaQuery.of(context).size.height*0.053,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0,173,25,1),
                ),
                onPressed:() async{
                  registerUser();
                },
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
                child: Text('Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(255,255,255,1),
                  ),
                ),
              ),
            ),
            ///horizontal row
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19.0,),
                    width: width*0.38,
                    child: Divider(
                      color: Color.fromRGBO(210,209,209,1),
                      height: 5,
                      thickness: 1,
                      indent: 1,
                      endIndent: 3,
                    ),
                  ),
                  Container(
                    child: Text('Or',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(100,100,100,1),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right:20.0,),
                    width: width*0.38,
                    child: Divider(
                      color: Color.fromRGBO(210,209,209,1),
                      height: 5,
                      thickness: 1,
                      indent: 1,
                      endIndent: 3,
                    ),
                  ),

                ],
              ),
            ),
            ///btns row
            Container(
              margin: EdgeInsets.only(top: 20.0,),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19.0,),
                    width: MediaQuery.of(context).size.width*0.43,
                    height: MediaQuery.of(context).size.height*0.05,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color.fromRGBO(234,234,234,1) ),
                        ),
                        onPressed: (){
                          _googleSignIn.signIn().then((value){
                            String userName = value!.displayName!;
                            String profilePicture = value!.photoUrl!;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('Assests/Images/google.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25.0,),
                              child: Text('Google',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(20,20,20,1),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 9.0,),
                    width: MediaQuery.of(context).size.width*0.43,
                    height: MediaQuery.of(context).size.height*0.05,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color.fromRGBO(234,234,234,1) ),
                        ),
                        onPressed: () async{
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginWithFacebook()));
                          // final LoginResult result = await FacebookAuth.instance.login();
                        },
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('Assests/Images/facebook-alt.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25.0,),
                              child: Text('Facebook',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(20,20,20,1),

                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            ///have an cccount
            SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => signin1()));
              },
              child: Container(
                child: Center(
                  child: Text('Already have an account?',
                    style: TextStyle(
                      color:Color.fromRGBO(20,20,20,1),
                      fontSize:  14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///Connect Register Api in flutter correct method
  void registerUser() async{
    ///ya register ki api ka link ha
    var url ="http://192.168.18.60/admindashboard/weshop/public/api/register";
    var data={
      "name" : namecontroller.text,
      "email" : emailcontroller.text,
      "password" : passwordcontroller.text,
    };
    var bodyy=json.encode(data);
    var urlParse= Uri.parse(url);
    Response response =  await http.post(
        urlParse,
        body: bodyy,
        headers: {
          "Content-Type": "application/json",
        }
    );
    // if (response.statusCode == 200) {
    //   final id = response.body;
    //   print('User ID: $id');
    // } else {
    //   throw Exception('Failed to retrieve user ID');
    // }
    var dataa=jsonDecode(response.body);
    print(dataa);
    print(response.body);
  }
}






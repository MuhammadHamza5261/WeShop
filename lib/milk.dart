import 'package:weshop/list_label.dart';

import 'main.dart';
import 'package:flutter/material.dart';
///stf
class milkscreen extends StatefulWidget {
  const milkscreen({Key? key}) : super(key: key);

  @override
  State<milkscreen> createState() => _milkscreenState();
}

class _milkscreenState extends State<milkscreen> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0,173,25,1),
          title: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => listlabel()));
                },
                child: Container(
                  child: Icon(Icons.arrow_back_ios_new,color: Color.fromRGBO(255,255,255,1)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0,),
                child: const Text('Milk',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255,255,255,1),
                  ),
                ),
              ),


            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: (
         Container(
           child: Column(
             children: [
               ///1st card
               Container(
                 margin: EdgeInsets.only(left: 13.0,top: 20.0,right: 13.0,),
                 width: width*0.92,
                 height: height*0.09,
                 child: Card(
                   elevation: 2.0,
                   child: Column(
                     children: [
                       Container(
                         margin: EdgeInsets.only(top: 10.0,),
                         child: Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 12.0,),
                               child: Text('Milk',
                                 style: TextStyle(
                                   fontSize: 16.0,
                                   fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 13.0,),
                               child: Text('Store Name',
                                 style: TextStyle(
                                   fontSize: 12.0,
                                   fontWeight: FontWeight.w300,
                                     color: Color.fromRGBO(100,100,100,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 170.0,),
                               child: ImageIcon(
                                 AssetImage('Assests/Images/b.png'),

                               ),

                             ),

                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4.0,left: 12.0,),
                         child: Row(
                           children: [
                             Container(
                               child: Text('Starting From:',
                                 style: TextStyle(
                                   fontSize: 12.0,
                                   fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(0,173,25,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 3.0,),
                               child: Text('PKR 60-180',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               ///2nd card
               SizedBox(
                 height: 5.0,
               ),
               Container(
                 margin: EdgeInsets.only(left: 13.0,right: 13.0,),
                 width: width*0.92,
                 height: height*0.09,
                 child: Card(
                   elevation: 2.0,
                   child: Column(
                     children: [
                       Container(
                         margin: EdgeInsets.only(top: 10.0,),
                         child: Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 12.0,),
                               child: Text('Milk',
                                 style: TextStyle(
                                     fontSize: 16.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 13.0,),
                               child: Text('Store Name',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w300,
                                     color: Color.fromRGBO(100,100,100,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 170.0,),
                               child: ImageIcon(
                                 AssetImage('Assests/Images/b.png'),

                               ),

                             ),

                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4.0,left: 12.0,),
                         child: Row(
                           children: [
                             Container(
                               child: Text('Starting From:',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(0,173,25,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 3.0,),
                               child: Text('PKR 60-210',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               ///3rd card
               SizedBox(
                 height: 5.0,
               ),
               Container(
                 margin: EdgeInsets.only(left: 13.0,right: 13.0,),
                 width: width*0.92,
                 height: height*0.09,
                 child: Card(
                   elevation: 2.0,
                   child: Column(
                     children: [
                       Container(
                         margin: EdgeInsets.only(top: 10.0,),
                         child: Row(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 12.0,),
                               child: Text('Milk',
                                 style: TextStyle(
                                     fontSize: 16.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 13.0,),
                               child: Text('Store Name',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w300,
                                     color: Color.fromRGBO(100,100,100,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 170.0,),
                               child: ImageIcon(
                                 AssetImage('Assests/Images/b.png'),

                               ),

                             ),

                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 4.0,left: 12.0,),
                         child: Row(
                           children: [
                             Container(
                               child: Text('Starting From:',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(0,173,25,1)
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 3.0,),
                               child: Text('PKR 60-240',
                                 style: TextStyle(
                                     fontSize: 12.0,
                                     fontWeight: FontWeight.w400,
                                     color: Color.fromRGBO(20,20,20,1)
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               ///4th card
               Container(
                 margin: EdgeInsets.only(top: 10.0,),
                 child: Center(
                   child: Text('Showing prices from biggest stores in Lahore',
                     style: TextStyle(
                       fontSize: 12.0,
                       fontWeight: FontWeight.w400,
                         color: Color.fromRGBO(180,180,180,1)

                     ),
                   ),
                 ),
               ),


             ],
           ),
         )
        ),

      ),
    );
  }
}

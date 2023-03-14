import 'dart:core';
import 'dart:core';
import 'dart:math';
import 'package:weshop/main.dart';
import 'package:flutter/material.dart';
import 'package:weshop/mylist.dart';
import 'package:weshop/qr_code.dart';
import 'add_item.dart';
import 'milk.dart';

class listlabel extends StatefulWidget {
  const listlabel({Key? key}) : super(key: key);
  @override
  State<listlabel> createState() => _listlabelState();
}

class _listlabelState extends State<listlabel> {









  ///for radio button
  int _value = 1;





  ///popup menu1
  void _showPopupMenu1() async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(180,80,600,500),
      items: [
        PopupMenuItem(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                child: const Icon(
                  Icons.delete_outline,
                  color:Color.fromRGBO(52,107,33,1),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,),
                child: InkWell(
                  onTap: (){
                    setState(() {
                    });
                  },
                  child: Text('Delete',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color:Color.fromRGBO(0,0,0,0.87),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        PopupMenuItem(
          child: InkWell(
            onTap: (){
              setState(() {
                Navigator.pop(context);
              });
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context){
                    return SizedBox(
                      height: 280,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15.0,left: 12.0,),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text('Sort By',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(100,100,100,1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0,),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(left: 13.0,),
                                   child: Text('Price: High to low',
                                     style: TextStyle(
                                       fontSize:16.0,
                                       fontWeight: FontWeight.w400,
                                       color: Color.fromRGBO(20,20,20,1),
                                     ),
                                   ),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 10.0,),
                                   child: Radio(
                                     activeColor: Color.fromRGBO(52,107,33,1),
                                     value: 1,
                                     groupValue: _value,
                                     onChanged: (value){
                                       setState(() {
                                         _value = value!;
                                       });

                                     },

                                   ),
                                 ),

                               ],
                             ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 13.0,),
                                    child: Text('Price: low to high',
                                      style: TextStyle(
                                        fontSize:16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20,20,20,1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0,),
                                    child: Radio(
                                      activeColor: Color.fromRGBO(52,107,33,1),
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      },

                                    ),
                                  ),


                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 13.0,),
                                    child: Text('data modified',
                                      style: TextStyle(
                                        fontSize:16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20,20,20,1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0,),
                                    child: Radio(
                                      activeColor: Color.fromRGBO(52,107,33,1),
                                      value: 3,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      },

                                    ),
                                  ),


                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 13.0,),
                                    child: Text('Alphabetically (A-Z)',
                                      style: TextStyle(
                                        fontSize:16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20,20,20,1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0,),
                                    child: Radio(
                                      activeColor: Color.fromRGBO(52,107,33,1),
                                      value: 4,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 13.0,),
                                    child: Text('Alphabetically (Z-A)',
                                      style: TextStyle(
                                        fontSize:16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(20,20,20,1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10.0,),
                                    child: Radio(
                                      activeColor: Color.fromRGBO(52,107,33,1),
                                      value: 5,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      },

                                    ),
                                  ),


                                ],
                              ),
                            ),

                          ],
                        ),
                      ),

                    );
                  }
              );
            },
            child: Container(
              child: InkWell(
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return SizedBox(
                          height: 280,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15.0,left: 12.0,),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text('Sort By',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(100,100,100,1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 13.0,),
                                        child: Text('Price: High to low',
                                          style: TextStyle(
                                            fontSize:16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20,20,20,1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0,),
                                        child: Radio(
                                          activeColor: Color.fromRGBO(52,107,33,1),
                                          value: 1,
                                          groupValue: _value,
                                          onChanged: (value){
                                            setState(() {
                                              _value = value!;
                                            });

                                          },

                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 13.0,),
                                        child: Text('Price: low to high',
                                          style: TextStyle(
                                            fontSize:16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20,20,20,1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0,),
                                        child: Radio(
                                          activeColor: Color.fromRGBO(52,107,33,1),
                                          value: 2,
                                          groupValue: _value,
                                          onChanged: (value){
                                            setState(() {
                                              _value = value!;
                                            });
                                          },

                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 13.0,),
                                        child: Text('data modified',
                                          style: TextStyle(
                                            fontSize:16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20,20,20,1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0,),
                                        child: Radio(
                                          activeColor: Color.fromRGBO(52,107,33,1),
                                          value: 3,
                                          groupValue: _value,
                                          onChanged: (value){
                                            setState(() {
                                              _value = value!;
                                            });
                                          },

                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 13.0,),
                                        child: Text('Alphabetically (A-Z)',
                                          style: TextStyle(
                                            fontSize:16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20,20,20,1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0,),
                                        child: Radio(
                                          activeColor: Color.fromRGBO(52,107,33,1),
                                          value: 4,
                                          groupValue: _value,
                                          onChanged: (value){
                                            setState(() {
                                              _value = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 13.0,),
                                        child: Text('Alphabetically (Z-A)',
                                          style: TextStyle(
                                            fontSize:16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromRGBO(20,20,20,1),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0,),
                                        child: Radio(
                                          activeColor: Color.fromRGBO(52,107,33,1),
                                          value: 5,
                                          groupValue: _value,
                                          onChanged: (value){
                                            setState(() {
                                              _value = value!;
                                            });
                                          },

                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),

                        );
                      }
                  );
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      child: ImageIcon(
                        AssetImage('Assests/Images/Vector (2).png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context){
                                return SizedBox(
                                  height: 280,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 15.0,left: 12.0,),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text('Sort By',
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(100,100,100,1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0,),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 13.0,),
                                                child: Text('Price: High to low',
                                                  style: TextStyle(
                                                    fontSize:16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(20,20,20,1),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.0,),
                                                child: Radio(
                                                  activeColor: Color.fromRGBO(52,107,33,1),
                                                  value: 1,
                                                  groupValue: _value,
                                                  onChanged: (value){
                                                    setState(() {
                                                      _value = value!;
                                                    });

                                                  },

                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 13.0,),
                                                child: Text('Price: low to high',
                                                  style: TextStyle(
                                                    fontSize:16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(20,20,20,1),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.0,),
                                                child: Radio(
                                                  activeColor: Color.fromRGBO(52,107,33,1),
                                                  value: 2,
                                                  groupValue: _value,
                                                  onChanged: (value){
                                                    setState(() {
                                                      _value = value!;
                                                    });
                                                  },

                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 13.0,),
                                                child: Text('data modified',
                                                  style: TextStyle(
                                                    fontSize:16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(20,20,20,1),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.0,),
                                                child: Radio(
                                                  activeColor: Color.fromRGBO(52,107,33,1),
                                                  value: 3,
                                                  groupValue: _value,
                                                  onChanged: (value){
                                                    setState(() {
                                                      _value = value!;
                                                    });
                                                  },

                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 13.0,),
                                                child: Text('Alphabetically (A-Z)',
                                                  style: TextStyle(
                                                    fontSize:16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(20,20,20,1),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.0,),
                                                child: Radio(
                                                  activeColor: Color.fromRGBO(52,107,33,1),
                                                  value: 4,
                                                  groupValue: _value,
                                                  onChanged: (value){
                                                    setState(() {
                                                      _value = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 13.0,),
                                                child: Text('Alphabetically (Z-A)',
                                                  style: TextStyle(
                                                    fontSize:16.0,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(20,20,20,1),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.0,),
                                                child: Radio(
                                                  activeColor: Color.fromRGBO(52,107,33,1),
                                                  value: 5,
                                                  groupValue: _value,
                                                  onChanged: (value){
                                                    setState(() {
                                                      _value = value!;
                                                    });
                                                  },

                                                ),
                                              ),


                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),

                                );

                              }
                          );
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist2()));
                        },
                        child: Text('Sort',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        PopupMenuItem(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                child: Icon(Icons.share, color: Color.fromRGBO(52,107,33,1),),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,),
                child: InkWell(
                  onTap: (){
                    setState(() {

                    });

                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist2()));
                  },
                  child: Text('Share',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(20,20,20,1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                child: const Icon(
                  Icons.qr_code_scanner_rounded,
                  color: Color.fromRGBO(52,107,33,1),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,),
                child: Text('Scan QR Code',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(20,20,20,1),
                  ),
                ),
              ),
            ],
          ),
        ),



      ],

      elevation: 8.0,
    );

  }
  ///add contributor popup menu
  void _showPopupMenu3() async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(40,300,50,100),
      items: [
        PopupMenuItem(
         child: Container(
           height: height*0.25,
           child: Column(
             children: [
               ///1st row close icon
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       child: Icon(Icons.close,color: Color.fromRGBO(52,107,33,1),),
                     ),
                   ],
                 ),
               ),
               ///2nd row
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       child: Text('Add Contributor',
                         style: TextStyle(
                           fontSize: 16.0,
                           fontWeight: FontWeight.w500,
                           color: Color.fromRGBO(20,20,20,1),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               ///3rd row
               SizedBox(
                 height: 4.0,
               ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       child: Text(displayText,
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
               ///4th row buttons
               SizedBox(
                 height: 22.0,
               ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       width: width*0.32,
                       height: height*0.05,
                       child: OutlinedButton(
                         style: OutlinedButton.styleFrom(
                           side: BorderSide(color: Color.fromRGBO(0,173,25,1),)

                         ),
                           onPressed: (){
                             changeText();

                           },
                           child: Text('Limited Access',
                             style: TextStyle(
                               fontSize: 12.0,
                               fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(100, 100,100,1),
                             ),
                           )

                       ),
                     ),

                     Container(
                       width: width*0.32,
                       height: height*0.05,
                       child: OutlinedButton(
                           style: OutlinedButton.styleFrom(
                               side: BorderSide(color: Color.fromRGBO(0,173,25,1),)

                           ),
                           onPressed: (){
                             changeText2();
                           },
                           child: Text('Full Access',
                             style: TextStyle(
                               fontSize: 12.0,
                               fontWeight: FontWeight.w300,
                               color: Color.fromRGBO(100, 100,100,1),
                             ),
                           )
                       ),
                     ),
                   ],
                 ),
               ),
               ///5th row button
               SizedBox(
                 height: 17.0,
               ),
               Container(
                 margin: EdgeInsets.only(),
                 width: width*0.63,
                 height: height*0.045,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: Color.fromRGBO(0,173,25,1),
                   ),
                   onPressed: (){
                     setState(() {
                       Navigator.pop(context);
                     });
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => qr_code()));
                   },
                   child: Text('Continue',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 14.0,
                       fontWeight: FontWeight.w700,

                     ),
                   ),
                 ),

               ),

             ],
           ),
         ),
        ),



      ],

      elevation: 8.0,
    );

  }





  bool? isChecked = false;
  bool? isChecked2 = false;

  late double height;
  late double width;


   bool _isVisible1 = true;
   bool _isVisible2 = false;
   bool _isVisible3 = false;
   bool _isVisible4 = true;
   bool _isVisible5 = false;



    ///changing text 1
  var  displayText ="Select Access Type ";

  var String =['Need approval to make changes'];

  void changeText(){
    setState(() {
      displayText = String[Random().nextInt(String.length)];

    });
  }

   ///changing text 2
  var  displayText2 ="Select Access Type ";

  var String2 =['Make changes without approval'];

  void changeText2(){
    setState(() {
      displayText = String2[Random().nextInt(String2.length)];

    });
  }











  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   backgroundColor:Color.fromRGBO(0,173,25,1),
        //   title: Row(
        //     children: [
        //       Container(
        //         child: Icon(Icons.arrow_back_ios_new),
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(left: 30.0,),
        //         child: const Text('List Label',
        //           style: TextStyle(
        //             fontSize: 18.0,
        //             fontWeight: FontWeight.w600,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(left: 122.0,),
        //         child: InkWell(
        //           onTap: (){
        //             _showPopupMenu3();
        //           },
        //           child: ImageIcon(
        //             AssetImage('Assests/Images/Vector (1).png'),
        //
        //
        //           ),
        //         ),
        //
        //       ),
        //       Container(
        //         margin: EdgeInsets.only(),
        //         child: IconButton(
        //           onPressed: (){
        //             _showPopupMenu1();
        //           },
        //           icon: Icon(Icons.more_vert_sharp,size: 23.0,),
        //
        //         ),
        //       ),
        //     ],
        //   ),
        //   automaticallyImplyLeading: false,
        // ),
        body: (
        Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Positioned(
                          child: AppBar(
                            backgroundColor:Color.fromRGBO(0,173,25,1),
                            title: Row(
                              children: [
                                Container(
                                  child: InkWell(
                                      onTap: (){
                                        setState(() {

                                        });
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
                                      },
                                      child: Icon(Icons.arrow_back_ios_new)),
                                ),
                                    Container(
                                      margin: EdgeInsets.only(left: 25.0,),
                                      child: const Text('List Label',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                         margin: EdgeInsets.only(left: 127.0,),
                                        child: InkWell(
                                         onTap: (){
                                          setState(() {
                                          if(_isVisible4=false){}
                                          if(_isVisible5=true){}
                                              });
                                         _showPopupMenu3();
                                          },
                        child: ImageIcon(
                          AssetImage('Assests/Images/Vector (1).png'),
                        ),
                      ),
                  ),
               Container(
                margin: EdgeInsets.only(),
                child: IconButton(
                  onPressed: (){
                      _showPopupMenu1();
                    },
                  icon: Icon(Icons.more_vert_sharp,size: 23.0,),
                   ),
                   ),
                              ],
                            ),
                            automaticallyImplyLeading: false,
                          )),
                    ),
                    Visibility(
                      visible: _isVisible5,
                      child: AppBar(
                        backgroundColor: Color.fromRGBO(0,173,25,1),
                        title: Row(
                          children: [
                          Container(
                                    margin: EdgeInsets.only(left: 10.0,),
                                    child: InkWell(
                                        onTap: (){
                                          setState(() {
                                            if(_isVisible4=true){}
                                            if(_isVisible5=false){}
                                          });

                                        },
                                        child: Icon(Icons.close,color: Colors.white,)),
                                  ),
                      Container(
                                  margin: EdgeInsets.only(left: 30.0,),
                                  child: const Text('Add Contributor',
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
                      // child: Container(
                      //   width: width,
                      //   height: height*0.08,
                      //   child: Card(
                      //     color: Color.fromRGBO(0,173,25,1),
                      //     shape: RoundedRectangleBorder(
                      //
                      //     ),
                      //     child: Row(
                      //       children: [
                      //         Container(
                      //           margin: EdgeInsets.only(left: 10.0,),
                      //           child: InkWell(
                      //               onTap: (){
                      //                 setState(() {
                      //                   if(_isVisible4=true){}
                      //                   if(_isVisible5=false){}
                      //                 });
                      //
                      //               },
                      //               child: Icon(Icons.close,color: Colors.white,)),
                      //         ),
                      //         Container(
                      //           margin: EdgeInsets.only(left: 30.0,),
                      //           child: const Text('Add Contributor',
                      //             style: TextStyle(
                      //               fontSize: 18.0,
                      //               fontWeight: FontWeight.w600,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ),
                      //
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),


              ///1st appbar
              // Container(
              //   width: width*1.0,
              //   height: height*0.07,
              //   child: Card(
              //     color: Color.fromRGBO(0,173,25,1),
              //     child: Row(
              //       children: [
              //         Container(),
              //       ],
              //     ),
              //   ),
              // ),
              // Visibility(
              //   visible: _isVisible4,
              //   child: Container(
              //     width: width*1.0,
              //   height: height*0.07,
              //   child: Card(
              //     color: Color.fromRGBO(0,173,25,1),
              //     shape: RoundedRectangleBorder(
              //     ),
              //     child: Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.only(left: 10.0,),
              //           child: InkWell(
              //             onTap: (){
              //               Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
              //             },
              //               child: Icon(Icons.arrow_back_ios_new, color: Color.fromRGBO(255,255,255,1),)),
              //         ),
              //         Container(
              //           margin: EdgeInsets.only(left: 30.0,),
              //           child: const Text('List Label',
              //             style: TextStyle(
              //               fontSize: 18.0,
              //               fontWeight: FontWeight.w600,
              //               color: Color.fromRGBO(255,255,255,1),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           margin: EdgeInsets.only(left: 137.0,),
              //           child: InkWell(
              //             onTap: (){
              //               setState(() {
              //                 if(_isVisible4=false){}
              //                 if(_isVisible5=true){}
              //               });
              //               _showPopupMenu3();
              //             },
              //             child: ImageIcon(
              //               AssetImage('Assests/Images/Vector (3).png'),
              //
              //
              //             ),
              //           ),
              //
              //         ),
              //         Container(
              //           margin: EdgeInsets.only(),
              //           child: IconButton(
              //             onPressed: (){
              //               _showPopupMenu1();
              //
              //
              //
              //             },
              //             icon: Icon(Icons.more_vert_sharp, color: Color.fromRGBO(255,255,255,1),  size: 23.0,),
              //
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //   ),
              // ),
               ///2nd appbar
              // Visibility(
              //   visible: _isVisible5,
              //   child: Container(
              //     width: width,
              //     height: height*0.08,
              //     child: Card(
              //       color: Color.fromRGBO(0,173,25,1),
              //       shape: RoundedRectangleBorder(
              //
              //       ),
              //       child: Row(
              //         children: [
              //           Container(
              //             margin: EdgeInsets.only(left: 10.0,),
              //             child: InkWell(
              //               onTap: (){
              //                 setState(() {
              //                   if(_isVisible4=true){}
              //                   if(_isVisible5=false){}
              //                 });
              //
              //               },
              //                 child: Icon(Icons.close,color: Colors.white,)),
              //           ),
              //           Container(
              //             margin: EdgeInsets.only(left: 30.0,),
              //             child: const Text('Add Contributor',
              //               style: TextStyle(
              //                 fontSize: 18.0,
              //                 fontWeight: FontWeight.w600,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // ),



               Visibility(
                 visible: _isVisible2,
                 child: Container(
                   child: Column(
                     children: [
                       SizedBox(
                         height: 23.0,
                       ),
                       Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 16.0,),
                               child: Text('Total',
                                 style: TextStyle(
                                   fontSize: 14.0,
                                   fontWeight: FontWeight.w600,
                                   color: Color.fromRGBO(0,173,25,1),
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 16.0,),

                               child: Text('PKR 440',
                                 style: TextStyle(
                                   fontSize: 14.0,
                                   fontWeight: FontWeight.w400,
                                   color: Color.fromRGBO(20,20,20,1),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       ///1st card
                       SizedBox(
                         height: 15.0,
                       ),
                       Container(
                         width: width*0.945,
                         height: height*0.08,
                         child: Card(
                           elevation: 5.0,
                           child: Row(
                             children: [
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(top: 5),
                                   child: Visibility(
                                     child: InkWell(
                                       // onLongPress: changedata,
                                       child: Checkbox(
                                         side: BorderSide(color: Color.fromRGBO(0,173,25,1),),
                                         value: isChecked,
                                         activeColor: Color.fromRGBO(0,173,25,1),
                                         onChanged: (newBool){
                                           setState(() {
                                             isChecked = newBool;
                                             // if(_isVisible6=true){}

                                           });

                                         },


                                       ),
                                     ),
                                   ),








                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top: 4.0,),
                                 child: Text('Milk',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 16.0,
                                   ),
                                 ),
                               ),
                              Container(
                                margin: EdgeInsets.only(top: 14.0,),
                                width: width*0.05,
                                height: height*0.02,
                                child: Card(
                                  color: Color.fromRGBO(52,107,33,1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2.2,),
                                    child: Text('L',
                                      style: TextStyle(
                                        fontSize: 8.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               ///Stack1
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(left: 70.0,top: 10.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1),)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 12.0,top: 5.0,),
                                             child: Text('01',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 99.0,top: 29.0),
                                         width: width*0.07,
                                         height: height*0.023,
                                         child: Card(
                                           color: Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 2.0,top: 1.0,),
                                             child: Text('QTY',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),

                               ///Stack 2
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(top: 10.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                                             child: Text('180',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 28.5,top: 29.0),
                                         width: width*0.07,
                                         height: height*0.023,
                                         child: Card(
                                           color:  Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 1.0,top: 1.0,),
                                             child: Text('PKR',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               // Container(
                               //   child: Container(
                               //     margin: EdgeInsets.only(),
                               //     child: Stack(
                               //       children:[
                               //         Container(
                               //           margin: EdgeInsets.only(top: 9.0,),
                               //           width: width*0.13,
                               //           height: height*0.04,
                               //           child: Card(
                               //             shape: RoundedRectangleBorder(
                               //                 borderRadius: BorderRadius.circular(7),
                               //                 side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                               //             ),
                               //             child: Container(
                               //               margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                               //               child: Text('180',
                               //                 style: TextStyle(
                               //                   fontSize: 12.0,
                               //                   fontWeight: FontWeight.w400,
                               //                 ),
                               //               ),
                               //             ),
                               //           ),
                               //         ),
                               //         Container(
                               //           margin: EdgeInsets.only(left: 29.0,top: 29.0),
                               //           width: width*0.07,
                               //           height: height*0.023,
                               //           child: Card(
                               //               color:  Color.fromRGBO(52,107,33,1),
                               //             shape: RoundedRectangleBorder(
                               //                 borderRadius: BorderRadius.circular(3)
                               //             ),
                               //             child: Text('PKR',
                               //               style: TextStyle(
                               //                 fontSize: 8.0,
                               //                 color: Colors.white,
                               //               ),
                               //             ),
                               //           ),
                               //         ),
                               //       ],
                               //     ),
                               //   ),
                               // ),
                               ///Stack 3
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(top: 10.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                                             child: Text('180',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                                 color: Color.fromRGBO(100,100,100,1),
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 22.0,top: 28.0),
                                         width: width*0.095,
                                         height: height*0.023,
                                         child: Card(
                                           color:  Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 2.0,top: 1.0,),
                                             child: Text('TOTAL',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               // Container(
                               //   child: Container(
                               //     margin: EdgeInsets.only(),
                               //     child: Stack(
                               //       children:[
                               //         Container(
                               //           margin: EdgeInsets.only(top: 9.0,),
                               //           width: width*0.13,
                               //           height: height*0.04,
                               //           child: Card(
                               //             shape: RoundedRectangleBorder(
                               //                 borderRadius: BorderRadius.circular(7),
                               //                 side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                               //             ),
                               //             child: Container(
                               //               margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                               //               child: Text('180',
                               //                 style: TextStyle(
                               //                   fontSize: 12.0,
                               //                   fontWeight: FontWeight.w400,
                               //                 ),
                               //               ),
                               //             ),
                               //           ),
                               //         ),
                               //         Container(
                               //           margin: EdgeInsets.only(left: 25.0,top: 29.0),
                               //           width: width*0.095,
                               //           height: height*0.023,
                               //           child: Card(
                               //               color:  Color.fromRGBO(52,107,33,1),
                               //             shape: RoundedRectangleBorder(
                               //                 borderRadius: BorderRadius.circular(3)
                               //             ),
                               //             child: Text('TOTAL',
                               //               style: TextStyle(
                               //                 fontSize: 8.0,
                               //                 color: Colors.white,
                               //               ),
                               //             ),
                               //           ),
                               //         ),
                               //       ],
                               //     ),
                               //   ),
                               // ),




                             ],
                           ),

                         ),
                       ),
                       ///2nd card
                       SizedBox(
                         height: 5.0,
                       ),
                       Container(
                         width: width*0.945,
                         height: height*0.08,
                         child: Card(
                           elevation: 5.0,
                           child: Row(
                             children: [
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(top: 5),
                                   child: Visibility(
                                     child: InkWell(
                                       // onLongPress: changedata,
                                       child: Checkbox(
                                         side: BorderSide(color: Color.fromRGBO(0,173,25,1),),
                                         value: isChecked2,
                                         activeColor: Color.fromRGBO(0,173,25,1),
                                         onChanged: (newBool){
                                           setState(() {
                                             isChecked2 = newBool;
                                             // if(_isVisible6=true){}

                                           });

                                         },


                                       ),
                                     ),
                                   ),








                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top: 6.0,),
                                 child: Text('Juice',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 16.0,
                                   ),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(top: 15.0,),
                                 child: Container(
                                   width: width*0.06,
                                   height: height*0.023,
                                   margin: EdgeInsets.only(top: 1.0,),
                                   child: Card(
                                     color: Color.fromRGBO(52,107,33,1),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(2)
                                     ),
                                     child: Text('mL',
                                       style: TextStyle(
                                           fontSize: 8.0,
                                           color: Colors.white
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                               ///Stack1
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(left: 60.0,top: 10.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1),)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 12.0,top: 5.0,),
                                             child: Text('01',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 90.0,top: 29.0),
                                         width: width*0.07,
                                         height: height*0.023,
                                         child: Card(
                                           color: Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 2.0,top: 1.0,),
                                             child: Text('QTY',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               ///Stack 2
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(top: 10.0,left: 1.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                                             child: Text('180',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 28.5,top: 29.0),
                                         width: width*0.07,
                                         height: height*0.023,
                                         child: Card(
                                           color:  Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 1.0,top: 1.0,),
                                             child: Text('PKR',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               ///Stack 3
                               Container(
                                 child: Container(
                                   margin: EdgeInsets.only(),
                                   child: Stack(
                                     children:[
                                       Container(
                                         margin: EdgeInsets.only(top: 10.0,),
                                         width: width*0.13,
                                         height: height*0.04,
                                         child: Card(
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(4),
                                               side: BorderSide(color:  Color.fromRGBO(0,173,25,1))
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                                             child: Text('180',
                                               style: TextStyle(
                                                 fontSize: 12.0,
                                                 fontWeight: FontWeight.w400,
                                                 color: Color.fromRGBO(100,100,100,1),
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                       Container(
                                         margin: EdgeInsets.only(left: 20.0,top: 28.0),
                                         width: width*0.095,
                                         height: height*0.023,
                                         child: Card(
                                           color:  Color.fromRGBO(52,107,33,1),
                                           shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(3)
                                           ),
                                           child: Container(
                                             margin: EdgeInsets.only(left: 2.0,top: 1.0,),
                                             child: Text('TOTAL',
                                               style: TextStyle(
                                                 fontSize: 7.0,
                                                 color: Colors.white,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                       // Container(
                       //   width: width*0.945,
                       //   height: height*0.08,
                       //   child: Card(
                       //     elevation: 5.0,
                       //     child: Row(
                       //       children: [
                       //         Container(
                       //           child: Container(
                       //             margin: EdgeInsets.only(top: 5),
                       //             child: Visibility(
                       //               child: InkWell(
                       //                 // onLongPress: changedata,
                       //                 child: Checkbox(
                       //                   side: BorderSide(color: Colors.green),
                       //                   value: isChecked2,
                       //                   activeColor: Colors.green,
                       //                   onChanged: (newBool){
                       //                     setState(() {
                       //                       isChecked2 = newBool;
                       //                       // if(_isVisible6=true){}
                       //
                       //                     });
                       //
                       //                   },
                       //
                       //
                       //                 ),
                       //               ),
                       //             ),
                       //
                       //
                       //
                       //
                       //
                       //
                       //
                       //
                       //           ),
                       //         ),
                       //         Container(
                       //           margin: EdgeInsets.only(top: 4.0,),
                       //           child: Text('Milk',
                       //             style: TextStyle(
                       //               fontWeight: FontWeight.w400,
                       //               fontSize: 16.0,
                       //             ),
                       //           ),
                       //         ),
                       //         Container(
                       //           margin: EdgeInsets.only(top: 15.0,left: 1.0),
                       //           width: width*0.04,
                       //           height: height*0.015,
                       //           color: Colors.green,
                       //           child: Container(
                       //             margin: EdgeInsets.only(left: 5.0,top: 1.0,),
                       //             child: Text('L',
                       //               style: TextStyle(
                       //                   fontSize: 8.0,
                       //                   color: Colors.white
                       //               ),
                       //             ),
                       //           ),
                       //         ),
                       //         ///Stack1
                       //         Container(
                       //           child: Container(
                       //             margin: EdgeInsets.only(),
                       //             child: Stack(
                       //               children:[
                       //                 Container(
                       //                   margin: EdgeInsets.only(left: 70.0,top: 9.0,),
                       //                   width: width*0.13,
                       //                   height: height*0.04,
                       //                   child: Card(
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(7),
                       //                         side: BorderSide(color: Colors.green)
                       //                     ),
                       //                     child: Container(
                       //                       margin: EdgeInsets.only(left: 12.0,top: 5.0,),
                       //                       child: Text('01',
                       //                         style: TextStyle(
                       //                           fontSize: 12.0,
                       //                           fontWeight: FontWeight.w400,
                       //                         ),
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //                 Container(
                       //                   margin: EdgeInsets.only(left: 100.0,top: 29.0),
                       //                   width: width*0.07,
                       //                   height: height*0.023,
                       //                   child: Card(
                       //                     color: Colors.green,
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(3)
                       //                     ),
                       //                     child: Text('QTY',
                       //                       style: TextStyle(
                       //                         fontSize: 8.0,
                       //                         color: Colors.white,
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //               ],
                       //             ),
                       //           ),
                       //         ),
                       //         ///Stack 2
                       //         Container(
                       //           child: Container(
                       //             margin: EdgeInsets.only(),
                       //             child: Stack(
                       //               children:[
                       //                 Container(
                       //                   margin: EdgeInsets.only(top: 9.0,left: 1.0,),
                       //                   width: width*0.13,
                       //                   height: height*0.04,
                       //                   child: Card(
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(7),
                       //                         side: BorderSide(color: Colors.green)
                       //                     ),
                       //                     child: Container(
                       //                       margin: EdgeInsets.only(left: 9.0,top: 5.0,),
                       //                       child: Text('180',
                       //                         style: TextStyle(
                       //                           fontSize: 12.0,
                       //                           fontWeight: FontWeight.w400,
                       //                         ),
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //                 Container(
                       //                   margin: EdgeInsets.only(left: 30.0,top: 29.0),
                       //                   width: width*0.07,
                       //                   height: height*0.023,
                       //                   child: Card(
                       //                     color: Colors.green,
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(3)
                       //                     ),
                       //                     child: Text('PKR',
                       //                       style: TextStyle(
                       //                         fontSize: 8.0,
                       //                         color: Colors.white,
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //               ],
                       //             ),
                       //           ),
                       //         ),
                       //         ///Stack 3
                       //         Container(
                       //           child: Container(
                       //             margin: EdgeInsets.only(),
                       //             child: Stack(
                       //               children:[
                       //                 Container(
                       //                   margin: EdgeInsets.only(top: 9.0,),
                       //                   width: width*0.13,
                       //                   height: height*0.04,
                       //                   child: Card(
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(7),
                       //                         side: BorderSide(color: Colors.green)
                       //                     ),
                       //                     child: Container(
                       //                       margin: EdgeInsets.only(left:9.0,top: 5.0,),
                       //                       child: Text('180',
                       //                         style: TextStyle(
                       //                           fontSize: 12.0,
                       //                           fontWeight: FontWeight.w400,
                       //                         ),
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //                 Container(
                       //                   margin: EdgeInsets.only(left: 20.0,top: 29.0),
                       //                   width: width*0.095,
                       //                   height: height*0.023,
                       //                   child: Card(
                       //                     color: Colors.green,
                       //                     shape: RoundedRectangleBorder(
                       //                         borderRadius: BorderRadius.circular(3)
                       //                     ),
                       //                     child: Text('TOTAL',
                       //                       style: TextStyle(
                       //                         fontSize: 8.0,
                       //                         color: Colors.white,
                       //                       ),
                       //                     ),
                       //                   ),
                       //                 ),
                       //               ],
                       //             ),
                       //           ),
                       //         ),
                       //
                       //
                       //
                       //
                       //       ],
                       //     ),
                       //
                       //   ),
                       // ),

                     ],
                   ),
                 ),
               ),












              SizedBox(
                height: 220.0,
              ),
              ///centre image and text
              Visibility(
                visible: _isVisible1,
                child: Container(
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('Assests/Images/Frame (2).png'),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Container(
                            child: Text('Add items to show here',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 240.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0,173,25,1),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => additem(
                          isVisible: _isVisible1,
                          isVisible2: _isVisible2,
                          isVisible3: _isVisible3,
                          isVisible4: _isVisible4,
                          isVisible5: _isVisible5,

                        )));
                        // _showPopupMenu3();
                      },
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              ///Bottom Sheet
              SizedBox(
                height: height*0.02,
              ),
              Visibility(
                visible: _isVisible3,
                child: Container(
                  margin: EdgeInsets.only(),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.1,
                  child: Card(
                    elevation: 15.0,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 18.0,top: 3.0,),
                          child: Image.asset('Assests/Images/Group 13.png'),
                        ),
                       Container(
                         margin: EdgeInsets.only(left: 6.0,),
                         child: Text('Item Prices In',
                           style: TextStyle(
                             fontSize: 18.0,
                             fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0,0,0,1),
                           ),
                         ),
                       ),
                        Container(
                          margin: EdgeInsets.only(left: 3.0,),
                          child: Text('Lahore',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0,173,25,1),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 84.0,),
                          child: IconButton(onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context){
                                  return SizedBox(
                                    height: 220,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 30.0,),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 18.0,),
                                                  child: Image.asset('Assests/Images/Group 13.png'),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 6.0,),
                                                  child: Text('Item Prices In',
                                                    style: TextStyle(
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color.fromRGBO(0,0,0,1),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 3.0,),
                                                  child: Text('Lahore',
                                                    style: TextStyle(
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color.fromRGBO(0,173,25,1),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 100.0,),
                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => listlabel()));

                                                    },
                                                      child: const Icon(Icons.close, color: Color.fromRGBO(52,107,33,1),)),
                                                ),


                                              ],
                                            ),
                                          ),
                                          ///milk text card
                                          InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => milkscreen()));

                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(top: 20.0,),
                                              width: width*0.93,
                                              height: height*0.081,
                                              child: Card(
                                                elevation: 10.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(right: 92.0,top: 10.0,),
                                                          child: Text('Milk',

                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight: FontWeight.w400,
                                                              color: Color.fromRGBO(20,20,20,1),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(top: 4.0,left: 10.0,),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                child: Text('Starting From:',
                                                                  style: TextStyle(
                                                                    fontSize: 12.0,
                                                                    fontWeight: FontWeight.w400,
                                                                    color: Color.fromRGBO(0,173,25,1),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets.only(left: 3.0,),
                                                                child: Text('PKR 60-80',
                                                                  style: TextStyle(
                                                                      fontSize: 12.0,
                                                                      fontWeight: FontWeight.w400,
                                                                    color: Color.fromRGBO(20,20,20,1),

                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(right: 10.0,),
                                                      child: Icon(Icons.close,size: 20.0,),
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ///Juice text card
                                          Container(
                                            width: width*0.93,
                                            height: height*0.081,
                                            child: Card(
                                              elevation: 10.0,

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(right: 92.0,top: 10.0,),
                                                        child: Text('Juice',

                                                          style: TextStyle(
                                                            fontSize: 16.0,
                                                            fontWeight: FontWeight.w400,
                                                            color: Color.fromRGBO(20,20,20,1),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(top: 4.0,left: 10.0,),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              child: Text('Starting From:',
                                                                style: TextStyle(
                                                                  fontSize: 12.0,
                                                                  fontWeight: FontWeight.w400,
                                                                  color: Color.fromRGBO(0,173,25,1),

                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.only(left: 3.0,),
                                                              child: Text('PKR 35-280',
                                                                style: TextStyle(
                                                                    fontSize: 12.0,
                                                                    fontWeight: FontWeight.w400,
                                                                  color: Color.fromRGBO(20,20,20,1),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(right: 10.0,),
                                                    child: Icon(Icons.close,size: 20.0,),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                  );
                                }

                            );
                          },
                            icon: Icon(Icons.chevron_right_outlined, color: Color.fromRGBO(52,107,33,1),size: 30.0,),


                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              ///Expanded card
              // Container(
              //   margin: EdgeInsets.only(),
              //   child: Card(
              //     elevation: 5.0,
              //     child: ExpansionTile(
              //       title: Row(
              //         children: [
              //         Container(
              //
              //           margin: EdgeInsets.only(),
              //           child: Image.asset('Assests/Images/Group 13.png'),
              //         ),
              //     Container(
              //                margin: EdgeInsets.only(left: 6.0,),
              //                child: Text('Item Prices In',
              //                  style: TextStyle(
              //                    fontSize: 18.0,
              //                    fontWeight: FontWeight.w600,
              //
              //                  ),
              //                ),
              //              ),
              //     Container(
              //                 margin: EdgeInsets.only(left: 3.0,),
              //                 child: Text('Lahore',
              //                   style: TextStyle(
              //                     fontSize: 18.0,
              //                     fontWeight: FontWeight.w600,
              //                     color: Colors.green,
              //                   ),
              //                 ),
              //               ),
              //
              //
              //
              //
              //
              //
              //
              //         ],
              //       ),
              //       children: [
              //         Container(
              //           width: width*0.93,
              //           height: height*0.081,
              //           child: Card(
              //             elevation: 10.0,
              //
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Column(
              //                   children: [
              //                     Container(
              //                       margin: EdgeInsets.only(right: 92.0,top: 10.0,),
              //                       child: Text('Milk',
              //
              //                         style: TextStyle(
              //                           fontSize: 16.0,
              //                           fontWeight: FontWeight.w400,
              //                         ),
              //                       ),
              //                     ),
              //                     Container(
              //                       margin: EdgeInsets.only(top: 4.0,left: 10.0,),
              //                       child: Row(
              //                         children: [
              //                           Container(
              //                             child: Text('Starting From:',
              //                               style: TextStyle(
              //                                 fontSize: 12.0,
              //                                 fontWeight: FontWeight.w400,
              //                                 color: Colors.green,
              //                               ),
              //                             ),
              //                           ),
              //                           Container(
              //                             margin: EdgeInsets.only(left: 3.0,),
              //                             child: Text('PKR 60-80',
              //                               style: TextStyle(
              //                                 fontSize: 12.0,
              //                                 fontWeight: FontWeight.w400
              //                               ),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 Container(
              //                   margin: EdgeInsets.only(right: 10.0,),
              //                   child: Icon(Icons.close,size: 20.0,),
              //                 ),
              //
              //               ],
              //             ),
              //           ),
              //         ),
              //         Container(
              //           width: width*0.93,
              //           height: height*0.081,
              //           child: Card(
              //             elevation: 10.0,
              //
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Column(
              //                   children: [
              //                     Container(
              //                       margin: EdgeInsets.only(right: 92.0,top: 10.0,),
              //                       child: Text('Juice',
              //
              //                         style: TextStyle(
              //                           fontSize: 16.0,
              //                           fontWeight: FontWeight.w400,
              //                         ),
              //                       ),
              //                     ),
              //                     Container(
              //                       margin: EdgeInsets.only(top: 4.0,left: 10.0,),
              //                       child: Row(
              //                         children: [
              //                           Container(
              //                             child: Text('Starting From:',
              //                               style: TextStyle(
              //                                 fontSize: 12.0,
              //                                 fontWeight: FontWeight.w400,
              //                                 color: Colors.green,
              //                               ),
              //                             ),
              //                           ),
              //                           Container(
              //                             margin: EdgeInsets.only(left: 3.0,),
              //                             child: Text('PKR 35-280',
              //                               style: TextStyle(
              //                                   fontSize: 12.0,
              //                                   fontWeight: FontWeight.w400
              //                               ),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //                 Container(
              //                   margin: EdgeInsets.only(right: 10.0,),
              //                   child: Icon(Icons.close,size: 20.0,),
              //                 ),
              //
              //               ],
              //             ),
              //           ),
              //         ),
              //
              //
              //       ],
              //     ),
              //   ),
              // ),

            ],
          ),
        )


        ),

      ),
    );
  }
}

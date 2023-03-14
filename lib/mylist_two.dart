import 'main.dart';
import 'package:flutter/material.dart';
///stl
class mylist2 extends StatefulWidget {

  const mylist2({Key? key}) : super(key: key);

  @override
  State<mylist2> createState() => _mylistState();
}

class _mylistState extends State<mylist2> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    ///popup menu
    void _showPopupMenu3() async {
      await showMenu(
        context: context,
        position: RelativeRect.fromLTRB(40,340,200,300),
        items: [
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                const Icon(
                  Icons.close,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          PopupMenuItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Center(child: Text("New Lists")),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Center(child: Text("Enter new list name",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
                Container(
                  width: width*0.93,
                  height: height*0.05,
                  margin: EdgeInsets.only(top: 17.0,),
                  child: TextFormField(
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1.2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.2),
                      ),
                      hintText: 'List Name',
                    ),
                  ),
                  // validator: (password) {
                  //   if (isPasswordValid(password)) return null;
                  //   else
                  //     return 'Enter a valid password';
                  // },
                ),
                ///btn
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(),
                  width: width*0.93,
                  height: height*0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => mylist()));
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


        ],

        elevation: 8.0,
      );

    }
    ///POP UP menu 2
    void _showPopupMenu4() async {
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
                    Icons.edit,
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0,),
                  child: Text('Edit',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
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
                    Icons.delete_outline,
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0,),
                  child: Text('Delete',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
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
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0,),
                  child: Text('Scan QR Code',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              Container(
                child: const Text('My List2',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 172.0),
                child: Row(
                  ///mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.share),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(),
                      child: IconButton(
                        onPressed: (){
                          _showPopupMenu4();

                        },
                        icon: Icon(Icons.more_vert_sharp,size: 25.0,),

                      ),
                    ),
                  ],
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
                  SizedBox(
                    height: 25.0,
                  ),
                 Container(
                   margin: EdgeInsets.only(left: 15.0,),
                   width: width*0.9,
                   height: height*0.08,
                   child: Card(
                     elevation: 6.0,
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 10.0,top: 15.0),
                               child: Text('List Name',
                                 style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 14.0,
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 10.0,top: 15.0,),
                               child: Text('0.00',
                                 style: TextStyle(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 14.0,
                                 ),
                               ),
                             ),

                           ],
                         ),
                         Container(
                           child: Row(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 10.0,),
                                 child: Text('items:0',
                                   style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12.0,
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

                ],
              ),
            )


            ///yaha sa








        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        // floatingActionButton:
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 80.0),
        //   child: FloatingActionButton(
        //     onPressed: (){
        //       _showPopupMenu3();
        //     },
        //     backgroundColor: Colors.green,
        //     child: const Icon(Icons.add),
        //   ),
        // ),



        ///bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // activeIcon: Image.asset("Assets/Images/list.png",width: 15,color: Colors.white,),
              icon: ImageIcon(AssetImage('Assests/Images/list.png',)),
              label: 'My Lists',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),


      ),
    );
  }
}
///stf

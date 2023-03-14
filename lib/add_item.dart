import 'list_label.dart';
import 'main.dart';
import 'package:flutter/material.dart';
///stf
class additem extends StatefulWidget {




  const additem({Key? key, required bool isVisible, required bool isVisible2, required bool isVisible3, required bool isVisible4, required bool isVisible5, }) : super(key: key);

  @override
  State<additem> createState() => _additemState();
}

class _additemState extends State<additem> {

   bool isVisible2 = true;
   bool isVisible1 = false;
   bool isVisible3 = true;

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0,173,25,1),
          title: Row(
            children: [
              Container(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      if(isVisible2=true){}
                      if(isVisible3=true){}
                      if(isVisible1=false){}
                    });
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => listlabel()));
                  },
                    child: Icon(Icons.arrow_back_ios_new)),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0,),
                child: const Text('Add Item',
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
        body: (
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,

              ),
              ///Serach bar
              Container(
                margin: EdgeInsets.only(left: 15.0,right: 15.0,),
                width: width*0.9,
          height: height*0.05,
          child: TextField(
          cursorColor: Colors.black,
            decoration:  InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(0,173,25,1),),
              ),

                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color.fromRGBO(100,100,100,1),)
                ),
                contentPadding:EdgeInsets.only(top: 8.0),
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(100,100,100,1),
                    fontSize: 18.0,
                ),
                prefixIcon: Container(
                  padding: EdgeInsets.only(),
                  child: Icon(Icons.search,color: Color.fromRGBO(100,100,100,1),),
                  // child: Image.asset('assets/icons/search.png'),
                  width: 18,
                )
            ),
          ),
        ),
              ///card
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0,right: 15.0),
                // width: width*0.9,
                // height: height*0.12,
                child: Card(
                  elevation: 5.0,
                  child: ExpansionTile(
                    title: Text('Milk',
                      style: TextStyle(
                          color: Color.fromRGBO(20,20,20,1),
                      ),
                    ),
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18.0,),
                              child: Text('Select Unit:',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(100,100,100,1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,),
                              width: width*0.13,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color.fromRGBO(52,107,33,1)
                                  ),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Container(
                                  margin: EdgeInsets.only(left: 15.0),
                                    child: Text('L',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(),
                              width: width*0.17,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color.fromRGBO(52,107,33,1)
                                    ),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Container(
                                    margin: EdgeInsets.only(left: 15.0),
                                    child: Text('mL',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    )),
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
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,

                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Eggs',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline, color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///3rd card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,

                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Ketchup',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///4th card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,

                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Flour',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///5th card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,

                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Mayonnaise',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///6th card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,

                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Salt',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///7th card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Sugar',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
                  ),
                ),

              ),
              ///8th card
              Container(
                margin: EdgeInsets.only(left: 15.0,right: 15.0),
                // width: width*0.9,
                // height: height*0.12,
                child: Card(
                  elevation: 5.0,
                  child: ExpansionTile(
                    title: Text('Juice',
                      style: TextStyle(
                        color: Color.fromRGBO(20,20,20,1),

                      ),
                    ),
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18.0,),
                              child: Text('Select Unit:',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(100,100,100,1),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,),
                              width: width*0.13,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color.fromRGBO(52,107,33,1)
                                    ),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Container(
                                    margin: EdgeInsets.only(left: 15.0),
                                    child: Text('L',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(),
                              width: width*0.17,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color.fromRGBO(52,107,33,1)
                                    ),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Container(
                                    margin: EdgeInsets.only(left: 15.0),
                                    child: Text('mL',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ///9th card
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.08,
                child: Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0,),
                        child: Text('Cheese',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(20,20,20,1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 12.0,),
                        child: Icon(Icons.add_circle_outline,color: Color.fromRGBO(52,107,33,1),size: 20.0,),
                      ),
                    ],
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


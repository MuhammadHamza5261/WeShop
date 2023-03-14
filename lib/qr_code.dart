import 'main.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class qr_code extends StatefulWidget {
  const qr_code({Key? key}) : super(key: key);

  @override
  State<qr_code> createState() => _qr_codeState();
}

class _qr_codeState extends State<qr_code> {
  late double height;
  late double width;
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
                child: Icon(Icons.close),
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
        body: (
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 120.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 37.0,),
                height: height*0.13,
                width: width*0.8,
                color: Colors.blueAccent,
               child: Column(
                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           margin: EdgeInsets.only(top: 20.0,),
                           child: Text('Scan QR Code',
                             style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(top: 10.0,),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           child: Text('Scan this code to access list name',
                             style: TextStyle(
                               fontSize: 14.0,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),


              ),
              ///qr code

            ],
          ),
        )
        ),

      ),

    );
  }
}

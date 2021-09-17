import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergdac/load.dart';


class ArtigosD extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 248),
      body: Column(
        children: <Widget>[
          /*SizedBox(height: 0.04 * screenHeight),
          Row(
            children: <Widget>[
              SizedBox(width: 0.015 * screenWidth),
              IconButton(
                icon: Icon(Icons.arrow_back_ios), 
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
              SizedBox(width: 0.2*screenWidth),
            ],
          ),
          SizedBox(height: 0.02 * screenHeight),*/
          Expanded(
            child: StreamBuilder(
              stream: Firestore.instance.collection("artigos").document("1977 mar 27").snapshots(),
              builder: (context, snapshot) {
                if(!snapshot.hasData){
                  return Load();
                }
                var userDocument = snapshot.data;
                return Scaffold(
                  body: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 0.02 * screenHeight),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 0.015 * screenWidth),
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios), 
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }
                                ),
                                SizedBox(width: 0.2*screenWidth),
                              ],
                            ),
                            SizedBox(height: 0.01 * screenHeight),
                            SizedBox(height: 10),
                            Container(
                              width: 0.95*screenWidth,
                              height: 0.25*screenHeight,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 238, 241, 248),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                boxShadow: <BoxShadow> [
                                  BoxShadow(
                                    color: Color.fromARGB(150, 71, 65, 187),
                                    blurRadius: 5.0,
                                    offset: Offset(0.0, 7)
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.15, vertical: screenHeight*0.03),
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: "Tenerife, Março de 1977", style: TextStyle(color: Color.fromARGB(255, 71, 65, 187), fontSize: 24, fontWeight: FontWeight.w700)),
                                        TextSpan(text: "\n"),
                                        TextSpan(text: "Uma história real", style: TextStyle(color: Color.fromARGB(255, 71, 65, 187), fontSize: 24,  fontWeight: FontWeight.w700)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            /*Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                child: Text(userDocument["data"], style: TextStyle(color: Colors.black, fontSize: 30.0,fontFamily: 'WorkSans', fontWeight: FontWeight.w800, letterSpacing: 1.2),)
                              ),
                            ),*/
                            SizedBox(height: 40.0,),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["pric"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'WorkSans-Bold'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 30.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price4"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'WorkSans-Bold'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price41"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price5"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'WorkSans-Bold'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price51"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price52"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price53"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price54"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["price55"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["fonte"], style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, fontFamily: 'WorkSans-Bold'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["fonte1"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                SizedBox(width: 20.0),
                                Expanded(
                                  child: Text(userDocument["fonte2"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                                ),
                                SizedBox(width: 20.0)
                              ],
                            ),
                            SizedBox(height: 20.0),
                          ]
                        ),
                      )
                    ],
                  ),
                );
              }
            ) 
          ),
        ]
      ),
    );
  }
}


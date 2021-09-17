import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttergdac/load.dart';

class TestArtig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 0.04 * screenHeight),
          Row(
            children: <Widget>[
              SizedBox(width: 0.015 * screenWidth),
              IconButton(
                icon: Icon(Icons.arrow_back_ios), 
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
              SizedBox(width: 0.17 * screenWidth),
              /*Center(
                child: Container(
                  width: screenWidth*0.40,
                  height: screenHeight*0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Colors.deepPurpleAccent[400],
                    boxShadow: <BoxShadow> [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 0.75)
                      )
                    ]
                  ),
                  child: Center(child: Text('Destaques', style: TextStyle(color: Colors.white,fontSize: 30),))
                ),
              ),*/
              SizedBox(width: 0.03 * screenWidth),
              /*IconButton(
                icon: Icon(Icons.note_add), 
                onPressed: () {} /*_showAddPanel()*/,
              ),*/
            ],
          ),
          SizedBox(height: 0.02 * screenHeight),
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
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                child: Text(userDocument["data"], style: TextStyle(color: Colors.black, fontSize: 30.0,fontFamily: 'WorkSans', fontWeight: FontWeight.w800, letterSpacing: 1.2),)
                              ),
                            ),
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
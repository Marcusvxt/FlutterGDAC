import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttergdac/load.dart';

class Noticias9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    /*void _showAddPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: PassToAdd5(),
        );
      });
    }*/
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 248),
      body: Column(
      children: <Widget>[
        SizedBox(height: 40),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.arrow_back_ios), 
              onPressed: () {
                Navigator.pop(context);
              }
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.2),
              child: Container(child: Text('Acidentes', style: TextStyle(fontSize: 30),)),
            ),
            SizedBox(width: 0.03 * screenWidth),
            /*IconButton(
              icon: Icon(Icons.note_add), 
              onPressed: () {} /*=> _showAddPanel()*/,
            ),*/
          ],
        ),
        SizedBox(height: 20),
        Expanded(
         child: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection("noticias9").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> querySnapshot){
            if(querySnapshot.hasError)
              return Text("Some Error");
            if(querySnapshot.connectionState == ConnectionState.waiting){
              return Load();
            } else {

              final list = querySnapshot.data.documents;
              return ListView.builder(
                itemBuilder: (context, index){
                  /*return ListTile(
                    title: Text(list[index]["name"]),
                    subtitle: Text(list[index]["price"]),
                  );*/
                  return Column(
                    children: [
                      Container(
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 71, 65, 187),
                          /*image: DecorationImage(image: NetworkImage(list[index]["prodImage"]),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.white, BlendMode.softLight),
                          ),*/
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: FlatButton(
                          child: Center(
                            child: Text(
                                list[index]["data"],
                                style: TextStyle(color: Color.fromARGB(255, 238, 241, 248), fontSize: 30),
                            ),
                          ),
                          onPressed: () {
                              /*showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: new Text(list[index]["name"]),
                                    content: new Text(list[index]["price"]),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: new Text('OK'),
                                        onPressed: (){
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  );
                                } 
                              );*/
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => DetailListItem(list: list, index: index))
                              );   
                          },
                        ),
                      ),
                      SizedBox(height: screenHeight*0.02)
                    ],
                  );
                },
                itemCount: list.length,
              );
             }
            },
          ),
        ),
      ],
      )
    );
  }
}

class DetailListItem extends StatelessWidget {

  final List list;
  final index;
  DetailListItem({ Key key, this.list, this.index }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children:<Widget>[
          SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight*0.04),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.015),
                  IconButton(
                        icon: Icon(Icons.arrow_back_ios), 
                        onPressed: () => Navigator.of(context).pop()
                  ),
                ],
              ),
              /*Row(
                children: <Widget>[
                  SizedBox(width: 17.0),
                  Container(
                    width: 350,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(list[index]["prodImage"]),
                       fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20) 
                    )
                  ),
                ],
              ),*/
              SizedBox(height: screenHeight*0.02),
              /*Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                      child: Text(list[index]["data"], style: TextStyle(color: Colors.black, fontSize: 30.0,fontFamily: 'WorkSans', fontWeight: FontWeight.w800, letterSpacing: 1.2),)
                ),
              ),*/
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.04),
                child: Container(
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
                            TextSpan(text: list[index]["data"], style: TextStyle(color: Color.fromARGB(255, 71, 65, 187), fontSize: 24, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.04,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["hora"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link1"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link2"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link3"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link4"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link5"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link6"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link7"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link8"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link9"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link91"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link92"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link93"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link94"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link95"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link96"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link97"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link98"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link99"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link991"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link992"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005,),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["link993"], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.015),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["pric"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price21"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price2"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price3"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price31"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price32"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price33"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price34"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price35"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price4"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price41"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price5"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price51"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price52"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price53"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price54"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.005),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["price55"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["fonte"], style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, fontFamily: 'WorkSans-Bold'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["fonte1"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.01),
              Row(
                children: <Widget>[
                  SizedBox(width: screenWidth*0.05),
                  Expanded(
                    child: Text(list[index]["fonte2"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'WorkSans'),)
                  ),
                  SizedBox(width: screenWidth*0.05)
                ],
              ),
              SizedBox(height: screenHeight*0.02),
              /*Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Text('Links:'),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: RaisedButton(
                  child: Text('Link'),
                  onPressed: _launchURL,
                ),
              )*/
            ],
          ),
        ),
       ]
      ),
    );
  }
}
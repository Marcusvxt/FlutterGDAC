import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttergdac/menu/apoiadores.dart';
import 'package:fluttergdac/menu/equipe.dart';
import 'package:fluttergdac/menu/feedback.dart';

class Menuz extends StatefulWidget {
  @override
  _MenuzState createState() => _MenuzState();
}

class _MenuzState extends State<Menuz> {

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 248),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                  SizedBox(width: 0.2*screenWidth),
                ],
              ),
              SizedBox(height: screenHeight*0.15),
              Center(
                child: Container(
                  height: screenHeight*0.11,
                  width: screenWidth*0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/logofigma.png"),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 70.0,
                        offset: Offset(0.0, 0.75)
                      ),
                    ]
                  ),
                ),
              ),
              SizedBox(height: screenHeight*0.20),
              //text_snippet_outlined
              Column(
                children: <Widget>[
                  Container(
                    width: screenWidth*0.65,
                    child: FlatButton(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.feedback, color: Colors.black,), onPressed: null),
                          SizedBox(width: screenWidth*0.005),
                          Text('Seu Feedback', style: TextStyle(fontFamily: 'Worksans', fontWeight: FontWeight.w600, fontSize: 18),)
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => FeedbackScreen())
                        );
                      },
                    ),
                  ),
                  SizedBox(height: screenHeight*0.03,),
                  Container(
                    width: screenWidth*0.65,
                    child: FlatButton(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.person_outline, color: Colors.black,), onPressed: null),
                          SizedBox(width: screenWidth*0.005),
                          Text('Nossos Apoiadores', style: TextStyle(fontFamily: 'Worksans', fontWeight: FontWeight.w600, fontSize: 18),)
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => Apoiadores())
                        );
                      },
                    ),
                  ),
                  SizedBox(height: screenHeight*0.03,),
                  Container(
                    width: screenWidth*0.65,
                    child: FlatButton(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.people_outline, color: Colors.black,), onPressed: null),
                          SizedBox(width: screenWidth*0.005),
                          Text('Equipe', style: TextStyle(fontFamily: 'Worksans', fontWeight: FontWeight.w600, fontSize: 18),)
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => Equipe())
                        );
                      },
                    ),
                  ),
                ]
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fluttergdac/pages/character_listing_screen.dart';
import 'package:fluttergdac/screens/home/zhome.dart';
import 'package:splashscreen/splashscreen.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
           colors: [
            Colors.white54,
            Colors.white
           ],
          ),
          navigateAfterSeconds: Home(),
          loaderColor: Colors.transparent,
        ),
        Column(
          children: [
            SizedBox(height: screenHeight*0.30),
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
            SizedBox(height: screenHeight*0.45),
            Container(child: Text('APOIADOR', style: TextStyle(decoration: TextDecoration.none ,color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),)),
            SizedBox(height: screenHeight*0.02), 
            Container(
              height: screenHeight*0.05,
              width: screenWidth*0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logoUF.png"),
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
          ],
        ),
      ],
    );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight*0.12),
              Container(
                height: screenWidth*0.45,
                width: screenWidth*0.45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(90) 
                ),
              ),
              SizedBox(height: screenHeight*0.15),
              Row(
                children: [
                  SizedBox(width: screenWidth*0.02),
                  Container(
                    height: screenHeight*0.30,
                    width: screenWidth*0.30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.03),
                  Container(
                    height: screenHeight*0.30,
                    width: screenWidth*0.30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.03),
                  Container(
                    height: screenHeight*0.30,
                    width: screenWidth*0.30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: screenWidth*0.02),
                ],
              ),
            ],
          ),
        ),
      ),
    );*/
  }
}
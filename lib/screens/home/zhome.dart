import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttergdac/fenomenos/bvisibilidade.dart';
import 'package:fluttergdac/fenomenos/chuvaforte.dart';
import 'package:fluttergdac/fenomenos/fdegelo.dart';
import 'package:fluttergdac/fenomenos/nuvemcinzas.dart';
import 'package:fluttergdac/fenomenos/relampagos.dart';
import 'package:fluttergdac/fenomenos/tempareia.dart';
import 'package:fluttergdac/fenomenos/trovoada.dart';
import 'package:fluttergdac/fenomenos/turbulencia.dart';
import 'package:fluttergdac/fenomenos/windshear.dart';
import 'package:fluttergdac/menu/apoiadores.dart';
import 'package:fluttergdac/pages/notices.dart';
import 'package:fluttergdac/screens/destaques/artigos.dart';
import 'package:fluttergdac/screens/destaques/testartig.dart';
import 'package:fluttergdac/screens/home/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _launchURL() {
    print('open click');
    var url = 'https://aviation-safety.net/';
    launch(url);
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 248),
      /*appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Acidentes Aéreos', style: TextStyle(color: Colors.black, fontSize: 25),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            /*Container(
              child: FlatButton(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.chat, color: Colors.black), 
                      onPressed: null
                    ),
                    SizedBox(width: 15,),
                    Text('Seu Feedback'),
                  ],
                ),
                onPressed: () {},
              ),
            ),*/
            Container(
              child: FlatButton(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.people, color: Colors.black), 
                      onPressed: null
                    ),
                    SizedBox(width: 15,),
                    Text('Nossos Apoiadores'),
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
            /*Container(
              child: FlatButton(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.queue, color: Colors.black), 
                      onPressed: null
                    ),
                    SizedBox(width: 15,),
                    Text('Apoie nosso trabalho'),
                  ],
                ),
                onPressed: () {},
              ),
            ),*/
          ],
        )
      ),*/
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              SizedBox(height: screenHeight*0.02,),
              Row(
                children: [
                  SizedBox(width: screenWidth*0.03,),
                  IconButton(
                    icon: Icon(Icons.dehaze, color: Colors.black, size: 30), 
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child) {
                            Animation<Offset> custom = Tween<Offset> (begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn));

                            return SlideTransition(
                              position: custom,
                              child: child,
                            );
                          },
                          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation) {
                            return Menuz();
                          }
                        )
                     );
                    }
                  ),
                  SizedBox(width: screenWidth*0.30,),
                  Container(
                    width: screenWidth*0.12,
                    height: screenHeight*0.03,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logofigTrans.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenWidth*0.02,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.005*screenWidth),
                child: FlatButton(
                    child: Container(
                      width: 0.95*screenWidth,
                      height: 0.25*screenHeight,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 65, 187),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth*0.15, vertical: screenHeight*0.03),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Tenerife, Março de 1977", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700)),
                              TextSpan(text: "\n"),
                              TextSpan(text: "Uma história real", style: TextStyle(color: Colors.white, fontSize: 25,  fontWeight: FontWeight.w700)),
                              TextSpan(text: "\n"),
                              TextSpan(text: "Confira aqui a verdadeira história do", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                              TextSpan(text: "\n"),
                              TextSpan(text: "maior acidente aéreo da aviação", style: TextStyle(color: Colors.white, fontSize: 15,  fontWeight: FontWeight.w300)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => ArtigosD())
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.005*screenWidth),
                child: FlatButton(
                    child: Container(
                      width: 0.95*screenWidth,
                      height: 0.07*screenHeight,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(80, 71, 65, 187),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth*0.15, vertical: screenHeight*0.005),
                        child: Center(child: Text('Saiba Mais'))
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => ArtigosD())
                    );
                  },
                ),
              ),
              SizedBox(height: 0.04*screenHeight),
              Center(
                child: Text('Sistemas Meteorologicos', style: TextStyle(fontSize: 30),)
              ),
              SizedBox(height: 0.04*screenHeight),
              Column(
                children: [
                  Container(
                    height: screenHeight*0.08,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.0)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Windshear',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => WindshearDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Baixa Visibilidade',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => BVisibilidadeDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Trovoada',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => TrovoadaDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Turbulência',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => TurbulenciaDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Formação de gelo',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => FDeGeloDetail())
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight*0.03,),
                  Container(
                    height: screenHeight*0.08,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Relâmpagos',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => RelampagosDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Chuva Forte',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => ChuvaForteDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Tempestade de areia',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => TempAreiaDetail())
                            );
                          },
                        ),
                        SizedBox(height: screenHeight*0.02),
                        FlatButton(
                          child: Container(
                            height: screenHeight*0.08,
                            width: screenWidth*0.38,
                            margin: EdgeInsets.only(right: 0.005*screenWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:Color.fromARGB(255, 71, 65, 187),
                              boxShadow: <BoxShadow> [
                                /*BoxShadow(
                                  color: Color.fromARGB(150, 71, 65, 187),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 0.75)
                                )*/
                              ]
                            ),
                            child: Center(
                              child: Text(
                                'Nuvem de Cinzas',
                                style: TextStyle(color: Colors.white ,fontSize: 15),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => NuvemCinzasDetail())
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight*0.02,),
                  Center(
                    child: Text('Artigos', style: TextStyle(color: Colors.black ,fontSize: 30),),
                  ),
                  SizedBox(height: screenHeight*0.02),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Container(
                          height: screenHeight*0.08,
                          width: screenWidth*0.91,
                          margin: EdgeInsets.symmetric(horizontal: 0.005*screenWidth),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:Color.fromARGB(255, 71, 65, 187),
                            boxShadow: <BoxShadow> [
                              /*BoxShadow(
                                color: Color.fromARGB(150, 71, 65, 187),
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75)
                              )*/
                            ]
                          ),
                          child: Center(
                            child: Text(
                              'Tenerife, Março de 1977',
                              style: TextStyle(color: Colors.white ,fontSize: 15),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => ArtigosD())
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight*0.05),
                  Column(
                    children: [
                      Container(
                        height: screenHeight*0.05,
                        width: screenWidth*0.91,
                        margin: EdgeInsets.symmetric(horizontal: 0.005*screenWidth),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                          color:Color.fromARGB(255, 71, 65, 187),
                        ),
                        child: Center(
                          child: Text(
                            'Mais Informações',
                            style: TextStyle(color: Colors.white ,fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      FlatButton(
                        child: Container(
                          height: screenHeight*0.07,
                          width: screenWidth*0.91,
                          margin: EdgeInsets.symmetric(horizontal: 0.005*screenWidth),
                          decoration: BoxDecoration(
                            //image: DecorationImage(image: AssetImage('assets/images/aviation.png'), fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                            color:Color.fromARGB(80, 71, 65, 187),
                          ),
                          child: Center(child: Text("https://aviation-safety.net/")),
                        ),
                        onPressed: _launchURL,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
       ],
      ),
    );
  }
}
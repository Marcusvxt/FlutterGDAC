import 'package:flutter/material.dart';
import 'package:fluttergdac/pages/notices.dart';
import 'package:fluttergdac/styleguide.dart';
import 'package:url_launcher/url_launcher.dart';

class TrovoadaDetail extends StatefulWidget {
  @override
  _TrovoadaDetailState createState() => _TrovoadaDetailState();
}

class _TrovoadaDetailState extends State<TrovoadaDetail> {

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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: "background-Trovoada",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 238, 241, 248), Color.fromARGB(255, 238, 241, 248)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 0.04 * screenHeight),
                Padding(
                  padding: EdgeInsets.only(left: 0.016 * screenWidth, top: 0.005 * screenHeight),
                  child: IconButton(
                    iconSize: 40,
                    icon: Icon(Icons.close),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context);
                  },),
                ),
                /*Align(
                    alignment: Alignment.center,
                    child: Hero(
                        tag: "image-Trovoada",
                        child: Container(
                          width: 0.93 * screenWidth,
                          height: 0.25 * screenHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/descargaele.png"),
                            fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //child: Image.asset(widget.character.imagePath, height: screenHeight * 0.45)
                        )
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
                              TextSpan(text: "Turbulência", style: TextStyle(color: Color.fromARGB(255, 71, 65, 187), fontSize: 24, fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth*0.07, vertical: screenHeight*0.04),
                  child: Hero(
                    tag: "name-Trovoada",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                          child: Text("Definição:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'WorkSans-Bold'))
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth*0.07, 0, screenWidth*0.05, screenHeight*0.04),
                    child: Text("As trovoadas estão ligadas a descargas bruscas de eletricidade atmosférica. Esse fenômeno meteorológico ao definir-se como a sucessão de descargas elétricas e trovões,"
                    "acompanhada, geralmente, de precipitação, manifesta-se por uma claridade breve e intensa e ruídos acústicos fortes na atmosfera.", style: AppTheme.display2, textAlign: TextAlign.justify,),
                ),
                FlatButton(
                  child: Container(
                    height: screenHeight*0.08,
                    margin: EdgeInsets.symmetric(horizontal: screenWidth*0.01),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 71, 65, 187),
                    ),
                    child: Center(
                      child: Text(
                        'Acidentes',
                        style: TextStyle(color: Color.fromARGB(255, 238, 241, 248) ,fontSize: 25),
                        ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Notices3())
                    );
                  },
                ),
                SizedBox(height: 0.05 * screenHeight),
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
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fluttergdac/pages/notices.dart';
import 'package:fluttergdac/styleguide.dart';
import 'package:url_launcher/url_launcher.dart';

class TempAreiaDetail extends StatefulWidget {
  @override
  _TempAreiaDetailState createState() => _TempAreiaDetailState();
}

class _TempAreiaDetailState extends State<TempAreiaDetail> {

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
            tag: "background-Tempestade de areia",
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
                        tag: "image-Tempestade de areia",
                        child: Container(
                          width: 0.93 * screenWidth,
                          height: 0.25 * screenHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/tempestadeareia.png"),
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
                              TextSpan(text: "Tempestade de Areia", style: TextStyle(color: Color.fromARGB(255, 71, 65, 187), fontSize: 24, fontWeight: FontWeight.w700)),
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
                    tag: "name-Tempestade de areia",
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
                    child: Text("Uma tempestade de areia ou tempestade de poeira é um dos fenômenos denominados litometeoros e ocorre quando a umidade "
        "relativa do ar é mais baixa que 80% permitindo a suspensão de partículas em sua maioria sólidas mas não aquosas pelo ar. "
        "O resultado pode ser a Névoa seca, Tempestade de areia (ou poeira), Turbilhão de areia (ou poeira).", style: AppTheme.display2, textAlign: TextAlign.justify,),
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
                      MaterialPageRoute(builder: (context) => Notices8())
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
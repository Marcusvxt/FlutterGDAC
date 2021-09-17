import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttergdac/models/character.dart';
import 'package:fluttergdac/styleguide.dart';
import 'package:fluttergdac/pages/notices.dart';
import 'package:url_launcher/url_launcher.dart';

class  CharacterDetailScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {

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
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.character.colors,
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
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {
                      Navigator.pop(context);
                  },),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Hero(
                        tag: "image-${widget.character.name}",
                        child: Container(
                          width: 0.93 * screenWidth,
                          height: 0.25 * screenHeight,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(widget.character.imagePath),
                            fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //child: Image.asset(widget.character.imagePath, height: screenHeight * 0.45)
                        )
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                  child: Hero(
                    tag: "name-${widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                          child: Text(widget.character.name, style: AppTheme.heading)
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                    child: Text(widget.character.descripition, style: AppTheme.subHeading),
                ),
                FlatButton(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white60,
                    ),
                    child: Center(
                      child: Text(
                        'Acidentes',
                        style: TextStyle(color: Colors.black ,fontSize: 30),
                        ),
                    ),
                  ),
                  onPressed: () {
                    if(widget.character.notice == 'notices1'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices1())
                      );
                    }
                    else if(widget.character.notice == 'notices2'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices2())
                      );
                    }
                    else if(widget.character.notice == 'notices3'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices3())
                      );
                    }
                    else if(widget.character.notice == 'notices4'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices4())
                      );
                    }
                    else if(widget.character.notice == 'notices5'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices5())
                      );
                    }
                    else if(widget.character.notice == 'notices6'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices6())
                      );
                    }
                    else if(widget.character.notice == 'notices7'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices7())
                      );
                    }
                    else if(widget.character.notice == 'notices8'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices8())
                      );
                    }
                    else if(widget.character.notice == 'notices9'){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Notices9())
                      );
                    }
                  },
                ),
                SizedBox(height: 0.03 * screenHeight),
                Column(
                    children: [
                      Container(
                        height: screenHeight*0.08,
                        width: screenWidth*0.85,
                        margin: EdgeInsets.symmetric(horizontal: 0.03*screenWidth),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                          color:Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            'Adaptado de:',
                            style: TextStyle(color: Colors.black ,fontSize: 15)
                          ),
                        ),
                      ),
                      FlatButton(
                       child: Container(
                        height: screenHeight*0.09,
                        width: screenWidth*0.85,
                        margin: EdgeInsets.symmetric(horizontal: 0.03*screenWidth),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/aviation.png'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          color:Colors.white,
                        ),
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
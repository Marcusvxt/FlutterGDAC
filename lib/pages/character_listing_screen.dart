import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttergdac/models/character.dart';
import 'package:fluttergdac/styleguide.dart';
import 'package:fluttergdac/widgets/character_widget.dart';


class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false
    );
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
          FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
          ),
        ],
      ),*/
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Acidentes", style: AppTheme.display1),
                          TextSpan(text: "\n"),
                          TextSpan(text: "Aéreos", style: AppTheme.display2),
                        ],
                      ),
                    ),
                  ),
                  /*Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.redAccent,
                      child: IconButton(
                        icon: Icon(Icons.flight_takeoff),
                        color: Colors.white, 
                        onPressed: () /*async*/ {
                          //await _auth.signOut();
                        },
                      ),
                    ),
                  ),*/
                ],
              ),
              Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                     for (var i = 0; i<characters.length; i++)
                       CharacterWidget(character: characters[i])
                    ],
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
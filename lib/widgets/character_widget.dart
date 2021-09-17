import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttergdac/models/character.dart';
import 'package:fluttergdac/pages/character_detail_screen.dart';
import 'package:fluttergdac/styleguide.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key key, this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){
        Navigator.push(context, PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 350),
          pageBuilder: (context, _, __) => CharacterDetailScreen(character: character)));
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CharacterCardBackgroundClipper(),
              child: Hero(
                tag: "background-${character.name}",
                child: Container(
                height: 0.80 * screenHeight,
                width: 0.9 * screenWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: character.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
             ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.3 * screenWidth),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(character.name, style: AppTheme.heading)
                    )
                  ],
                ),
              ),
              SizedBox(height:0.03 * screenHeight),
              Align(
            alignment: Alignment(0, 0.8),
            child: Hero(
              tag: "image-${character.name}",
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(character.imagePath),
                  fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                  /*child: Image.asset(
                  character.imagePath,
                  height: screenHeight * 0.65,
                ),*/
              ),
            ),
          ),
          SizedBox(height:0.05 * screenHeight),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text('Clique para mais informações', style: TextStyle(color: Colors.white, fontSize: 19,))
                )
              ],
            ),
          ),
          SizedBox(height: 0.01 * screenHeight)
            ],
          ),
          
          /*Padding(
            padding: const EdgeInsets.only(left: 48, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Hero(
                  tag: "name-${character.name}",
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                        child: Text(character.name, style: AppTheme.heading,)
                    ),
                  ),
                ),
                Text("Clique para mais informações", style: TextStyle(color: Colors.white, fontSize: 19,),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width, size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0, size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
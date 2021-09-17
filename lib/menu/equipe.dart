import 'package:flutter/material.dart';

class Equipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(height: screenHeight*0.02,),
              Row(
                  children: [
                    SizedBox(width: 0.015 * screenWidth),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios), 
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    ),
                    SizedBox(width: 0.07 * screenWidth),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.2),
                      child: Container(
                        child: Text('Equipe', style: TextStyle(fontSize: 30),)
                      ),
                    ),
                    SizedBox(width: 0.03 * screenWidth),
                  ],
              ),
              SizedBox(height: screenHeight*0.03,),
              /*Row(
                  children: [
                    SizedBox(width: screenWidth*0.05),
                    Container(
                      child: Text(
                        "Somos estudantes da Universidade Federal do Rio \n"
                        "Grande do Norte, com objetivo de ampliar a educação. \n"
                        "Com a criação do aplicativo, estudantes de meteorologia \n"
                        "vão esta adicionandos textos que irá desmistificar \n"
                        "alguns acidentes aéreos provocados pela meteorologia."
                      ),
                    ),
                  ],
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                  children: [
                    SizedBox(width: screenWidth*0.05),
                    Container(
                    child: Text(
                        "Além disso, existe a participação de estudantes da \n"
                        "Escola de Ciencias e Tecnologia ativamente no \n"
                        "desenvolvimento do aplicativo."
                      ),
                    ),
                  ],
              ),*/
              SizedBox(height: screenHeight*0.02),
              Row(
                  children: [
                    SizedBox(width: screenWidth*0.03,),
                    Container(
                      constraints: BoxConstraints(
                        minWidth: screenWidth*0.2,
                        maxWidth: screenWidth*0.35,
                        minHeight: screenHeight*0.05,
                        maxHeight: screenHeight*0.2
                      ),
                      /*width: screenWidth*0.35,
                      height: screenHeight*0.22,*/
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 65, 187),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.18,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 241, 248),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image: AssetImage("assets/images/marcus.png"), fit: BoxFit.fill),
                            boxShadow: <BoxShadow> [
                              BoxShadow(
                                color: Color.fromARGB(150, 71, 65, 187),
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75)
                              )
                            ] 
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth*0.01),
                    Container(
                      child: Text(
                        "Desenvolvedor Senior do aplicativo, \n"
                        "com linguagem em dart, \n"
                        "utilizando a ferramenta flutter \n"
                        "para o desenvolvimento."
                      )
                    )
                  ]
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                  children: [
                    SizedBox(width: screenWidth*0.03,),
                    Container(
                      width: screenWidth*0.35,
                      height: screenHeight*0.22,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 65, 187),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.18,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 241, 248),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image: AssetImage("assets/images/tiago.png"), fit: BoxFit.fill),
                            boxShadow: <BoxShadow> [
                              BoxShadow(
                                color: Color.fromARGB(150, 71, 65, 187),
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75)
                              )
                            ] 
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth*0.01),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, \n"
                        "consectetur adipiscing elit, \n"
                        "sed do eiusmod tempor incididunt ut \n"
                        "labore et dolore magna aliqua."
                      )
                    )
                  ]
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                  children: [
                    SizedBox(width: screenWidth*0.03,),
                    Container(
                      width: screenWidth*0.35,
                      height: screenHeight*0.22,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 65, 187),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.18,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 241, 248),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image: AssetImage("assets/images/jose.png"), fit: BoxFit.fill),
                            boxShadow: <BoxShadow> [
                              BoxShadow(
                                color: Color.fromARGB(150, 71, 65, 187),
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75)
                              )
                            ] 
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth*0.01),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, \n"
                        "consectetur adipiscing elit, \n"
                        "sed do eiusmod tempor incididunt ut \n"
                        "labore et dolore magna aliqua."
                      )
                    )
                  ]
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                  children: [
                    SizedBox(width: screenWidth*0.03,),
                    Container(
                      width: screenWidth*0.35,
                      height: screenHeight*0.22,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 71, 65, 187),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Container(
                          width: screenWidth*0.30,
                          height: screenHeight*0.18,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 241, 248),
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image: AssetImage("assets/images/tiago.png"), fit: BoxFit.fill),
                            boxShadow: <BoxShadow> [
                              BoxShadow(
                                color: Color.fromARGB(150, 71, 65, 187),
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.75)
                              )
                            ] 
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth*0.01),
                    Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, \n"
                        "consectetur adipiscing elit, \n"
                        "sed do eiusmod tempor incididunt ut \n"
                        "labore et dolore magna aliqua."
                      )
                    )
                  ]
              ),
            ],
           ),
          ),
        ]
      ),
    );
  }
}
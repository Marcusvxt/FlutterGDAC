import 'package:flutter/material.dart';

class Apoiadores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
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
              Center(
                child: Text('Nossos Apoiadores', style: TextStyle(fontSize: 30),),
              ),
              SizedBox(width: 0.03 * screenWidth),
            ],
          ),
          SizedBox(height: screenHeight*0.03,),
          Row(
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
          ),
          SizedBox(height: screenHeight*0.02),
          Row(
            children: [
              SizedBox(width: screenWidth*0.03,),
              Container(
                width: screenWidth*0.30,
                height: screenHeight*0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage("assets/images/dcaclogo.png"), fit: BoxFit.fill) 
                )
              ),
              SizedBox(width: screenWidth*0.01),
              Container(
                child: Text(
                  "Departamento de ciências \n"
                  "atmosféricas e climáticas - \n"
                  "O departamento na qual \n"
                  "o professor sênior do \n"
                  "aplicativo está presente, \n"
                  "junto aos alunos responsáveis \n"
                  "pelo textos educacionais."
                )
              )
            ]
          ),
          SizedBox(height: screenHeight*0.02),
          Row(
            children: [
              SizedBox(width: screenWidth*0.03,),
              Container(
                width: screenWidth*0.30,
                height: screenHeight*0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage("assets/images/ectlogo.png"), fit: BoxFit.fill) 
                )
              ),
              SizedBox(width: screenWidth*0.01),
              Container(
                child: Text(
                  "Curso Ciências e Tecnologia - \n"
                  "Alunos em período de formação \n"
                  "responsáveis para execução de \n"
                  "ideias e códigos."
                )
              )
            ]
          ),
        ],
      ),
    );
  }
}
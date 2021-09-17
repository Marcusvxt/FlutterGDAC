import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FeedbackModel{
  final String feedback;

  FeedbackModel({ this.feedback });

  Map<String, dynamic> toMap(){
    return {
      "feedback" : this.feedback,
    };
  }
}

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {

  final feedback = TextEditingController();

  Future<void> insertData(final feedback) async{
    Firestore firestore = Firestore.instance;

    firestore.collection("feedback").add(feedback)
        .then((DocumentReference document){
          print(document.documentID);
        }).catchError((e){
          print(e);
        });
  }
  
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.2),
                child: Container(
                  child: Text('Feedback', style: TextStyle(fontSize: 30),)
                ),
              ),
              SizedBox(width: 0.03 * screenWidth),
            ],
          ),
          SizedBox(height: screenHeight*0.1,),
          Row(
            children: [
              SizedBox(width: screenWidth*0.05),
              Container(
                child: Text(
                  "Deixe o seu Feedback a respeito do aplicativo.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: screenWidth*0.8,
            height: screenHeight*0.1,
            decoration: BoxDecoration(

            ),
            child: TextField(
              decoration: InputDecoration(hintText: 'Feedback', border: OutlineInputBorder(), focusColor: Color.fromARGB(255, 71, 65, 187)),
              controller: feedback,
            ),
          ),

          FlatButton(
            color: Color.fromARGB(255, 71, 65, 187),
            textColor: Colors.white,
            child: Text('Enviar'),
            onPressed: (){

              final String pfeedback = feedback.text;

              final FeedbackModel product = FeedbackModel(feedback: pfeedback);

              insertData(product.toMap());
              
              feedback.text = "";

              Navigator.pop(context);
              
            },
          ),
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
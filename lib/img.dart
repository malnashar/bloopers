import 'package:flutter/material.dart';

class Pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nashar.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctor extends StatelessWidget{
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Vaccination calendar & other data",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
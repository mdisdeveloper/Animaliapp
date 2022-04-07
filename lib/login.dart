import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: NetworkImage("https://dhb3yazwboecu.cloudfront.net/270/fabercastell/colores/132_l.jpg"),
        fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            emailField(),
            passwordField(),
            logIn(),
            register(),
          ],
        ),
      ),
    );
  }
}

Widget emailField(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 3),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Email",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget passwordField(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 3),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Password",
      ),
    ),
  );
}

Widget logIn(){
  return Container(
    padding: const EdgeInsets.only(left: 0.0, top: 25.0),
    child: const Text(
      "Log In",
    ),
  );
}

Widget register(){
  return Container(
    padding: const EdgeInsets.only(right: 250.0, top: 100.0),
    child: const Text(
      "Register",
    ),
  );
}
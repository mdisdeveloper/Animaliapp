import 'package:flutter/material.dart';
import 'navigation/pet.dart';
import 'navigation/doctor.dart';
import 'navigation/passbook.dart';
import 'navigation/settings.dart';
import 'navigation/wellbeing.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPage = 2;

  final List<Widget> _page = [
    const Wellbeing(),
    const Passbook(),
    const Pet(),
    const Doctor(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animaliapp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: const Login(),
        // _page[_currentPage]
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          onTap: (index){
            setState(() {
              _currentPage = index;
            });
          },
          selectedItemColor: Colors.orangeAccent,
          currentIndex: _currentPage,
          unselectedItemColor: Colors.lightBlue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.graphic_eq), label: "My Wellbeing"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "My Passbook"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "My Pet"),
            BottomNavigationBarItem(icon: Icon(Icons.local_hospital), label: "My Doctor"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "My Settings"),
          ],
        ),
      ),
    );
  }
}
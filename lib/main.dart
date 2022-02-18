import 'package:flutter/material.dart';
import 'navigation/pet.dart';
import 'navigation/doctor.dart';
import 'navigation/passbook.dart';
import 'navigation/settings.dart';
import 'navigation/wellbeing.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animaliapp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        body: _currentPage == 0 ? const Wellbeing()
            : _currentPage == 1 ? const Passbook()
            : _currentPage == 2 ? const Pet()
            : _currentPage == 3 ? const Doctor()
            : _currentPage == 4 ? const Settings()
            : const Pet(),

        bottomNavigationBar: BottomNavigationBar(
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

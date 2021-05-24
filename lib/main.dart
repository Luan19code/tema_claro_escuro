import 'package:flutter/material.dart';
import 'package:tema_claro_escuro/variables.dart';
import 'package:tema_claro_escuro/page_one.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _estadoIsDarkModeEnabled() {
    setState(() {
      Variables.isDarkModeEnabled = !Variables.isDarkModeEnabled;
      Variables.counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teste de Tema',
      theme: ThemeData(
        brightness:
            Variables.isDarkModeEnabled ? Brightness.light : Brightness.dark,
        primaryColor: Variables.isDarkModeEnabled ? Colors.white : Colors.black,
        primaryColorDark: Colors.red,
        accentColor: Variables.isDarkModeEnabled ? Colors.black : Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor:
                Variables.isDarkModeEnabled ? Colors.black : Colors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageOne(
        estadoIsDarkModeEnabled: _estadoIsDarkModeEnabled,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tema_claro_escuro/page_one.dart';
import 'package:tema_claro_escuro/page_two.dart';
import 'package:tema_claro_escuro/variables.dart';

class MainDrawer extends StatelessWidget {
  final void Function() estadoIsDarkModeEnabled;

  const MainDrawer({
    Key key,
    this.estadoIsDarkModeEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bem vindo!"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              ListTile(
                  leading: Icon(
                    Icons.house_outlined,
                    size: 26,
                  ),
                  title: Text("Inicio"),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageOne(
                          estadoIsDarkModeEnabled: estadoIsDarkModeEnabled,
                        ),
                      ),
                    );
                  }),
              ListTile(
                leading: Icon(
                  Variables.isDarkModeEnabled
                      ? Icons.wb_sunny_outlined
                      : Icons.wb_sunny,
                  size: 26,
                ),
                title: Text(Variables.isDarkModeEnabled
                    ? "Tema Esta Claro"
                    : "Tema Esta Escuro"),
                onTap: estadoIsDarkModeEnabled,
              ),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 26,
                  ),
                  title: Text("Configurações"),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageTwo(
                          estadoIsDarkModeEnabled: estadoIsDarkModeEnabled,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tema_claro_escuro/variables.dart';

import 'main_drawer.dart';

class PageTwo extends StatelessWidget {
  final void Function() estadoIsDarkModeEnabled;

  const PageTwo({
    Key key,
    this.estadoIsDarkModeEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double wWidth = MediaQuery.of(context).size.width;
    print(wWidth);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Configuração"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(border: Border.all()),
                width: wWidth < 1000 ? wWidth * 0.3 : wWidth * 0.2,
                child: ListTile(
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
              ),
            ],
          ),
        ),
        drawer: MainDrawer(
          estadoIsDarkModeEnabled: estadoIsDarkModeEnabled,
        ),
      ),
    );
  }
}

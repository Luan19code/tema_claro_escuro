import 'package:flutter/material.dart';
import 'package:tema_claro_escuro/variables.dart';

import 'main_drawer.dart';

class PageOne extends StatelessWidget {
  final void Function() estadoIsDarkModeEnabled;

  const PageOne({
    Key key,
    this.estadoIsDarkModeEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Variables.isDarkModeEnabled
                    ? Icons.wb_sunny_outlined
                    : Icons.wb_sunny),
                onPressed: estadoIsDarkModeEnabled)
          ],
          title: Text(Variables.isDarkModeEnabled
              ? "Tema Esta Claro"
              : "Tema Esta Escuro"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Total de vezes que você alterou o tema:',
                  style: TextStyle(fontSize: hheight * 0.05),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${Variables.counter}',
                style: TextStyle(fontSize: hheight * 0.1),
              ),
            ],
          ),
        ),
        drawer: MainDrawer(
          estadoIsDarkModeEnabled: estadoIsDarkModeEnabled,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: estadoIsDarkModeEnabled,
          tooltip: 'Incrementar',
          child: Icon(Variables.isDarkModeEnabled
              ? Icons.wb_sunny_outlined
              : Icons.wb_sunny),
        ),
      ),
    );
  }
}

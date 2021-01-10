import 'package:flutter/material.dart';
import 'package:flutter_disenos/src/pages/basico.page.dart';
import 'package:flutter_disenos/src/pages/compuesto.page.dart';
import 'package:flutter_disenos/src/pages/scroll.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: "compuesto",
      routes: {
        "basico": (_) => BasicoPage(),
        "scroll": (_) => ScrollPage(),
        "compuesto": (_) => CompuestoPage(),
      },
    );
  }
}

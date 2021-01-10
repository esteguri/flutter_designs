import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class CompuestoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoPage(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _menuBotones(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoPage() {
    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 4,
      child: Container(
        height: 310,
        width: 310,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1),
          ]),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Classify transaction",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Classify this transaction into a particular category",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1))),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined, size: 30),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30),
            title: Container(),
          ),
        ],
      ),
    );
  }

  Widget _menuBotones() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBoton(Icons.swap_horiz, Colors.blue, "Azul"),
            _crearBoton(Icons.ac_unit, Colors.green, "Verde"),
          ],
        ),
        TableRow(
          children: [
            _crearBoton(Icons.payment, Colors.orange, "Naranja"),
            _crearBoton(Icons.file_download, Colors.grey, "Gris"),
          ],
        ),
        TableRow(
          children: [
            _crearBoton(Icons.move_to_inbox, Colors.red, "Rojo"),
            _crearBoton(Icons.supervised_user_circle_rounded, Colors.pinkAccent,
                "Rosa"),
          ],
        ),
      ],
    );
  }

  Widget _crearBoton(IconData icon, Color color, String texto) {
    return Container(
      height: 130,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: color,
            child: Icon(icon, color: Colors.white),
          ),
          Text(
            texto,
            style: TextStyle(color: color),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

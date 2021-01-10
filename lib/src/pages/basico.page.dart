import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estiloSubitulo = TextStyle(fontSize: 18, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      )),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://images.ctfassets.net/u0haasspfa6q/2sMNoIuT9uGQjKd7UQ2SMQ/1bb98e383745b240920678ea2daa32e5/sell_landscape_photography_online"),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Parque Arví",
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Ciudad de medellin",
                    style: estiloSubitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, "Call"),
        _accion(Icons.near_me, "Route"),
        _accion(Icons.share, "Share"),
      ],
    );
  }

  Widget _accion(IconData icon, String name) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35,
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        "os hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por",
        textAlign: TextAlign.justify,
      ),
    );
  }
}

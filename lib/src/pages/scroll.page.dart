import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [_fondo(), _textos()],
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          onPressed: () {},
          child: Text(
            "Bienvenidos",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _fondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Image(
        fit: BoxFit.fill,
        image: AssetImage("assets/scroll.png"),
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);

    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text("11°", style: estiloTexto),
            Text("Miercoles", style: estiloTexto),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down,
              size: 70,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

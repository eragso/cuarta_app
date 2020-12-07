import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(context),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage('https://besthqwallpapers.com/img/original/50934/tokyo-tower-bokeh-nightscapes-tv-tower-tokyo.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Japan', style: estiloTitulo ),
                  SizedBox( height: 7.0 ),
                  Text('Tokyo Tower', style: estiloSubTitulo ),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0 ) )

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      FlatButton.icon(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () => Navigator.pushNamed(context, 'travel'),
      icon: Icon (Icons.near_me),
      label: Text("VISIT")),
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'Sit minim aliqua minim laborum duis occaecat consectetur aliquip id ad deserunt. Adipisicing qui reprehenderit eu eu qui occaecat exercitation et aliqua laboris dolor. Nisi duis consectetur veniam id nulla deserunt aliqua velit ullamco. Deserunt exercitation adipisicing nostrud amet eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}
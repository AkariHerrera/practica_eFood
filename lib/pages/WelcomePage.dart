import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  // const WelcomePage({Key? key}) : super(key: key);
  final estiloTitulo = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  );
  final estiloSubtitulo = TextStyle(
    fontSize: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 80.0),
            _InsertarImagen(),
            SizedBox(height: 30.0),
            _Texto(),
            SizedBox(height: 30.0),
            _BotonLogin(context),
            _BotonSign(context)
          ],
        ),
      ),
    );
  }

  Widget _InsertarImagen() {
    return Image(
        image: NetworkImage(
            "https://img.freepik.com/vector-gratis/repartidor-moto-mascara_23-2148498576.jpg?size=338&ext=jpg"));
  }

  Widget _Texto() {
    return SafeArea(
        child: Column(
      crossAxisAlignment: (CrossAxisAlignment.center),
      children: <Widget>[
        Text("Welcome", style: estiloTitulo),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in gravida erat.",
            style: estiloSubtitulo,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ));
  }

  Widget _BotonLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.symmetric(horizontal: 160.0, vertical: 10.0),
            ),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () => Navigator.pushNamed(context, 'login'),
          ),
        ),
      ),
    );
  }

  Widget _BotonSign(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
          ),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'signup'),
        ),
      ),
    );
  }
}

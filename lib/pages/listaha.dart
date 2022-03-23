import 'package:flutter/material.dart';

class ListahaPage extends StatelessWidget {
  //get children => null;

  //const ListahaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          _imagen(
              'https://vivirmejor.mx/wp-content/uploads/2021/05/Preparar-Carne-Hamburguesa-Bimbo-Barcel.jpg'),
          _barraBotones(context),
          Expanded(
            child: ListView(
              children: [_list(context)],
            ),
          ),
        ],
      ),
    ));
  }

  Widget _imagen(String image) {
    final accion = Container(
        height: 250.0,
        child: Image(
          image: NetworkImage('$image'),
          width: double.infinity,
          height: 250.0,
          fit: BoxFit.cover,
        ));

    return Center(
      child: Stack(
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(20),
            child: (accion),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 100.0, horizontal: 70.0),
            child: Text(
              'Hamburguesas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _list(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                _optList(
                    context,
                    'https://www.pikpng.com/pngl/m/492-4929036_hamburguesas-con-papas-png-hamburguesa-casera-png-clipart.png',
                    'Sencilla con papas',
                    '30'),
                _optList(
                    context,
                    'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2020/08/ideas-de-hamburguesas-caseras-y-papas-fritas.jpg',
                    'Especial con papas',
                    '40'),
                _optList(
                    context,
                    'https://miscarnesparrilla.com/nuestro-menu/wp-content/uploads/2020/04/Aplicativos-MCP_Hamburguesas-doble-carne_Web.jpg',
                    '2 carnes con papas',
                    '50'),
                _optList(
                    context,
                    'https://media-cdn.tripadvisor.com/media/photo-s/18/92/e1/f9/hamburguesa-duke-triple.jpg',
                    '3 carnes con papas',
                    '60'),
                _optList(
                    context,
                    'https://www.cubaneandoconmario.com/wp-content/uploads/2019/06/Hamburguesas-de-Pollo-Buffalo2-1024x576.jpg',
                    'De pollo con salsa buffalo',
                    '50'),
                _optList(
                    context,
                    'https://res.cloudinary.com/amecar/image/upload/f_auto,w_849/v1591328343/DEPOLLO-ChargrilledBBQChickenSandwich-min_ekbexu.jpg',
                    'De pollo con salsa BBQ',
                    '50'),
                _optList(
                    context,
                    'https://dam.cocinafacil.com.mx/wp-content/uploads/2019/05/hamburguesa-vegetariana-receta.png',
                    'Vegetariana',
                    '50'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imagenLista(String imagen) {
    final accion = Container(
        width: 100.0,
        height: 80.0,
        child: Image(
          image: NetworkImage(
            '$imagen',
          ),
          fit: BoxFit.cover,
        ));
    return Column(children: [
      Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: accion,
              ),
            ],
          ))
    ]);
  }

  Widget _optList(
      BuildContext context, String imagen, String nombrecomida, String precio) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [_imagenLista('$imagen')],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$nombrecomida',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    size: 15.0,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(height: 2.0),
              Text('\$$precio',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () => _mostrarAlert(context),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _barraBotones(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listha');
            },
            child: Text(
              'Hamburguesas',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listpi');
            },
            child: Text(
              'Pizzas',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listpas');
            },
            child: Text(
              'Pastas',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listso');
            },
            child: Text(
              'Sopas',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('este es es contenido de la caja de alerta'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              ElevatedButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }
}

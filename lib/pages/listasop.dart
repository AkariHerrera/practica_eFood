import 'package:flutter/material.dart';

class listasoPage extends StatelessWidget {
  //const listasoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          _imagen(
              'https://www.lavanguardia.com/files/og_thumbnail/uploads/2020/10/28/5f996589364c7.jpeg'),
          _barraBotones(context),
          Expanded(
            child: ListView(
              children: [_list()],
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
                const EdgeInsets.symmetric(vertical: 100.0, horizontal: 140.0),
            child: Text(
              'Sopas',
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

  Widget _list() {
    return Card(
      child: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                _optList(
                    'https://dam.cocinafacil.com.mx/wp-content/uploads/2019/11/sopa-de-lima.jpg',
                    'Sopa de lima',
                    '65'),
                _optList('https://i.ytimg.com/vi/0QSy4Pnt_tE/maxresdefault.jpg',
                    'Sopa fría', '30'),
                _optList(
                    'https://www.recetin.com/wp-content/uploads/2011/01/sopachina.jpg',
                    'Sopa china',
                    '60'),
                _optList(
                    'https://www.recetasderechupete.com/wp-content/uploads/2019/10/Sopa-de-verduras-en-juliana.jpg',
                    'Sopa con verduras',
                    '60'),
                _optList(
                    'https://www.mexicoenmicocina.com/wp-content/uploads/2018/04/sopa-de-lentejas-500x500.jpg',
                    'Sopa lentejas',
                    '50'),
                _optList(
                    'https://t2.uc.ltmcdn.com/es/posts/1/8/5/como_preparar_sopa_ramen_de_pollo_45581_600_square.jpg',
                    'Sopa ramen',
                    '50'),
                _optList(
                    'https://assets.unileversolutions.com/recipes-v2/212914.jpg',
                    'Sopa con frijoles',
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

  Widget _optList(String imagen, String nombrecomida, String precio) {
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
                onPressed: () {},
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
                  color: Colors.grey,
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
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

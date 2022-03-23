import 'package:flutter/material.dart';

class ListpiPage extends StatelessWidget {
  // const ListpiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          _imagen(
              'https://www.saborusa.com/wp-content/uploads/2019/12/origen-de-la-pizza-1.jpg'),
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
              'Pizzas',
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
                    'https://babycocina.com/wp-content/uploads/2021/02/pizza-pepperoni.jpg',
                    'Pepperoni',
                    '100'),
                _optList('https://i.ytimg.com/vi/BD1jaDMN0ew/mqdefault.jpg',
                    'Hawaiana', '110'),
                _optList(
                    'https://www.pizzadelchef.com/wp-content/uploads/2020/02/carnes-frias-pizza-del-chef.jpg',
                    'Carnes frías',
                    '110'),
                _optList(
                    'https://dam.cocinafacil.com.mx/wp-content/uploads/2020/12/pizza-a-la-mexicana.jpg',
                    'Mexicana',
                    '110'),
                _optList(
                    'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2017/10/pizzapastor000.jpg',
                    'Pastor',
                    '130'),
                _optList(
                    'https://unareceta.com/wp-content/uploads/2014/05/pizza-4-quesos.jpg',
                    '4 quesos',
                    '110'),
                _optList(
                    'https://d1nsq2txwd94q7.cloudfront.net/public/files/production/recipes/images/4220/fancy/r_4220_1550829924.jpg',
                    'Margarita',
                    '110'),
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
                  color: Colors.black,
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
}

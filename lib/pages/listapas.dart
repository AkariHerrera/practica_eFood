import 'package:flutter/material.dart';

class ListpasPage extends StatelessWidget {
  // const ListpasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          _imagen(
              'https://cdn.sanity.io/images/jsdrzfkj/production-esar/dedd244f2e7c66775801eec1f147251c745ec56c-2000x1334.jpg?w=800&h=534&fit=crop'),
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
              'Pastas',
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
                    'https://images.aws.nestle.recipes/resized/cccc1b56a82b6321015e5c0719a310f4_ESPAGUETTI_A_LOS_TRES_QUESOS_-_PASTA_1200_600.jpg',
                    '3 quesos',
                    '50'),
                _optList(
                    'https://cocina-casera.com/wp-content/uploads/2017/12/Pasta-con-beicon-y-champi%C3%B1ones.jpg',
                    'Con champiñones',
                    '55'),
                _optList(
                    'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2017/10/pastaconcuatroquesosychipotle.jpg',
                    'Al chipotle',
                    '50'),
                _optList(
                    'https://imagesvc.meredithcorp.io/v3/mm/image?q=60&c=sc&poi=face&w=2000&h=1000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2018%2F02%2F14%2Frecetas-4115-spaghetti-boloesa-facil-2000.jpg',
                    'Pasta a la boloñesa',
                    '50'),
                _optList(
                    'https://www.wikihow.com/images_en/thumb/e/e0/Cook-Chicken-Alfredo-Step-13-Version-3.jpg/v4-1200px-Cook-Chicken-Alfredo-Step-13-Version-3.jpg',
                    'Pasta alfredo',
                    '50'),
                _optList(
                    'https://images-gmi-pmc.edge-generalmills.com/6c2d6de7-929b-42b6-9c96-2375f6078cdd.jpg',
                    'Con camarones',
                    '70'),
                _optList(
                    'https://tvpacifico.mx/recetas/intranet/images/recipes/57-46.jpg',
                    'Pasta italiana',
                    '60'),
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
                  color: Colors.black,
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

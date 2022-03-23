import 'package:flutter/material.dart';

class CoupondosPage extends StatelessWidget {
  //const CoupondosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Coupon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pushNamed(context, 'perfil'),
        ),
      ),
      body: Column(
        children: [
          _barraBotones(context),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 250.0,
                  child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/2527/2527649.png'),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 250.0,
                  child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/2527/2527649.png'),
                  ),
                ),
              ],
            ),
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
              Navigator.pushNamed(context, 'coupon');
            },
            child: Text(
              'Available',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'coupondos');
            },
            child: Text(
              'Used',
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

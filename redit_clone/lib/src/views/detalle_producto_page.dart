import 'package:flutter/material.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key, required this.id, this.extras});

  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('' /*'Detalle del producto $id'*/),
      ),
      body: SingleChildScrollView(
        child: Padding(
          //child: Text('Detalle del producto ${extras?['title']}'),
          padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: NetworkImage(extras?['image'])),
              //Text('Detalle del producto $id'),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange), //icono
                  Text(
                    '${extras?['rating']['rate']}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ), //views
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        '${extras?['rating']['count']} reviews',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ), //rate
                ],
              ), //rating
              SizedBox(height: 15),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${extras?['title']}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )), //titulo
              //Text('Precio: ${extras?['price']}'),
              SizedBox(height: 15),
              Text('${extras?['description']}'), //Descripcion
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${extras?['price']}',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.black)),
                      child: Text('Add to cart'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

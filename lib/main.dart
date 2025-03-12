import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Producto {
  final String idProducto;
  final String nombreProducto;
  final String fechaIngreso;
  final double precioProducto;
  final String descripcion;
  final String categoriaProducto;
  final int stock;

  Producto({
    required this.idProducto,
    required this.nombreProducto,
    required this.fechaIngreso,
    required this.precioProducto,
    required this.descripcion,
    required this.categoriaProducto,
    required this.stock,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Productos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductoListScreen(),
    );
  }
}

class ProductoListScreen extends StatelessWidget {
  // Lista de productos con datos en mapas
  final List<Map<String, dynamic>> productos = [
    {
      'idProducto': 'P001',
      'nombreProducto': 'Producto A',
      'fechaIngreso': '2025-03-01',
      'precioProducto': 25.0,
      'descripcion': 'Descripción del producto A',
      'categoriaProducto': 'Categoria 1',
      'stock': 15,
    },
    {
      'idProducto': 'P002',
      'nombreProducto': 'Producto B',
      'fechaIngreso': '2025-03-05',
      'precioProducto': 30.0,
      'descripcion': 'Descripción del producto B',
      'categoriaProducto': 'Categoria 2',
      'stock': 20,
    },
    {
      'idProducto': 'P003',
      'nombreProducto': 'Producto C',
      'fechaIngreso': '2025-03-07',
      'precioProducto': 50.0,
      'descripcion': 'Descripción del producto C',
      'categoriaProducto': 'Categoria 3',
      'stock': 10,
    },
    {
      'idProducto': 'P004',
      'nombreProducto': 'Producto D',
      'fechaIngreso': '2025-03-10',
      'precioProducto': 45.0,
      'descripcion': 'Descripción del producto D',
      'categoriaProducto': 'Categoria 4',
      'stock': 8,
    },
    {
      'idProducto': 'P005',
      'nombreProducto': 'Producto E',
      'fechaIngreso': '2025-03-12',
      'precioProducto': 60.0,
      'descripcion': 'Descripción del producto E',
      'categoriaProducto': 'Categoria 5',
      'stock': 5,
    },
  ];

  // Colores pastel para cada card
  final List<Color> pastelColors = [
    Colors.pink[100]!,
    Colors.lightBlue[100]!,
    Colors.lime[100]!,
    Colors.purple[100]!,
    Colors.orange[100]!,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alexis Espino Sanchez 1062', 
          style: TextStyle(
            color: Colors.white, // Cambiar color del texto del AppBar
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Centra el texto del AppBar
        backgroundColor: Colors.teal, // Cambia el color de fondo del AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            var producto = productos[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              color: pastelColors[index], // Asigna un color pastel diferente
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      producto['nombreProducto'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Divider(color: Colors.black.withOpacity(0.4)),
                    Text(
                      'ID: ${producto['idProducto']}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      'Fecha de Ingreso: ${producto['fechaIngreso']}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      'Precio: \$${producto['precioProducto']}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      'Categoría: ${producto['categoriaProducto']}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      'Stock: ${producto['stock']} unidades',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Descripción: ${producto['descripcion']}',
                      style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:carrito_getx_02/ui/pages/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Carrito de Compras',
      debugShowCheckedModeBanner: false,
      home: Productos(),
    );
  }
}
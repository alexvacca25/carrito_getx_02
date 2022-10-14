import 'package:carrito_getx_02/ui/auth/login.dart';
import 'package:carrito_getx_02/ui/pages/carrito.dart';
import 'package:carrito_getx_02/ui/pages/productos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de Compras',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const Login(),
        '/productos': (context) => const Productos(),
        '/carrito': (context) => const Carrito(),
      },
      home: const Login(),
    );
  }
}

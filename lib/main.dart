import 'package:carrito_getx_02/domain/controller/controlcarrito.dart';
import 'package:carrito_getx_02/domain/controller/controluser.dart';
import 'package:carrito_getx_02/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ControlCompras());
  Get.put(ControladorUser());
  runApp(const App());
}

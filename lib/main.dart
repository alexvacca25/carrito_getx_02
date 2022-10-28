import 'package:carrito_getx_02/domain/controller/controlcarrito.dart';
import 'package:carrito_getx_02/domain/controller/controluser.dart';
import 'package:carrito_getx_02/domain/controller/controluserf.dart';
import 'package:carrito_getx_02/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(ControlCompras());
  Get.put(ControladorUser());
  Get.put(ControlAuthFirebase());
  runApp(const App());
}

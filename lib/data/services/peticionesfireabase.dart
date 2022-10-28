import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:cloud_firestore/cloud_firestore.dart';


class PeticionesArticulo{
static final fs.FirebaseStorage storage = fs.FirebaseStorage.instance;
static final FirebaseFirestore _db = FirebaseFirestore.instance;

static Future<void> crearArticulo(Map<String, dynamic> catalogo, foto) async {
    var url = '';
    if (foto != null) {
      url = await cargarfoto(foto, catalogo['idArticulo']);
    }

    catalogo['foto'] = url.toString();

    await _db.collection('Articulos').doc().set(catalogo).catchError((e) {});
    //return true;
  }

  static Future<dynamic> cargarfoto(var foto, var idArt) async {
    final fs.Reference storageReference =
        fs.FirebaseStorage.instance.ref().child("Articulos");

    fs.TaskSnapshot taskSnapshot =
        await storageReference.child(idArt).putFile(foto);

    var url = await taskSnapshot.ref.getDownloadURL();

    return url.toString();
  }

}
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



import '../../firebase/firebase_service.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key});

  //final FirebaseService firebaseService = Get.find();

  String imageName = 'home_page/dome-8.jpg';

  final storage =FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Placeholder();



  }
}

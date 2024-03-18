

import '../model/a_object.dart';

abstract class ACategory extends AObject {
  ACategory({required super.id});


  String title='';

  String subtitle='';

  String text ='';

  String imageUrl='';

  String videoUrl='';

  String link='';



}
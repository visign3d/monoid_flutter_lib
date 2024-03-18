



import '../model/a_object.dart';

///inject dependency's
abstract class AService extends AObject{
  AService({super.id=''});

  start();
}

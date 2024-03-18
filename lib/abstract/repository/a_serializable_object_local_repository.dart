import 'a_local_repository.dart';


import '../model/a_serializable.dart';


///todo Serialized object local repository ,serialized object remote repository
abstract class ASerializableObjectLocalRepository<T extends ASerializableObject>
    extends ALocalRepository<T> {}



import '../model/a_serializable.dart';
import 'a_remote_repository.dart';

abstract class ASerializableObjectRemoteRepository<T extends ASerializableObject>
    extends ARemoteRepository<T> {}
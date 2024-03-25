import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';

extension CallExtension<T extends AObject> on ACommand<T> {
  Future<T> call() async {
    return await call();
  }
}

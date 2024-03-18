import 'package:equatable/equatable.dart';

///Base class for model objects
///
///[id] : key
///
/// [value] : null
///
/// by default two objects equals when [id] equals , override [props] getter to change the equality parameters
abstract class AObject<T> with EquatableMixin {
  const AObject({required this.id, this.value});
  ///unique id Uuid.
  final String id;
  ///optional value
  final T? value;


  ///Equality parameters
  ///
  /// List<Object?> get props => [id];
  @override
  List<Object?> get props => [id];
}

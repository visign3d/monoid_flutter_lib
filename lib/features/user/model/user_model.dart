


import 'package:dart_mappable/dart_mappable.dart';

import '../../../abstract/model/a_object.dart';

@MappableClass()
class UserModel extends AObject<UserModel> {
  UserModel(
      {required this.role,
      required this.address,
      required this.name,
      required this.email,
      required this.avatarUrl,
      required super.id});

  final String name;

  final String email;

  final String avatarUrl;

  final String address;

  final String role;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}



import 'package:monoid_flutter_lib/features/user/model/permissions/permissions.dart';

import '../../../abstract/model/a_object.dart';

class UserRole extends AObject {
  UserRole({required this.permissions, required super.id, required this.role});

  final String role;

  final CRUDPermissions permissions;

  @override
  List<Object?> get props => [role];
}

class AdminUser extends UserRole {
  AdminUser(
      {required super.id,
      super.role = 'admin',
      super.permissions = const CRUDPermissions(
          view: true, update: true, create: true, delete: true)});
}

class GuestUser extends UserRole {
  GuestUser(
      {required super.id,
      super.role = 'guest',
      super.permissions = const CRUDPermissions(
          view: true, update: false, create: false, delete: false)});
}

class UserUser extends UserRole {
  UserUser(
      {required super.id,
      super.role = 'user',
      super.permissions = const CRUDPermissions(
          view: true, update: true, create: true, delete: true)});
}

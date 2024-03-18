class Permissions {
  List<Permission> permission=[];
}

enum Permission { admin, user, editor }



class CRUDPermissions {
  const CRUDPermissions(
      {required this.view,
        required this.update,
        required this.create,
        required this.delete});

  final bool view;

  final bool update;

  final bool create;

  final bool delete;
}
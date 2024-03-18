

import '../../../abstract/repository/a_repository.dart';
import '../image_model.dart';


class ParseImageRepository extends ARepository<ImageModel>{
  @override
  Future<void> create(ImageModel item) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(ImageModel item) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<ImageModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<ImageModel?> getById(id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(ImageModel item) {
    // TODO: implement update
    throw UnimplementedError();
  }

}
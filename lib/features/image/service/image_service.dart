import 'package:fast_cached_network_image/fast_cached_network_image.dart';

import '../../../abstract/service/a_service.dart';


class ImageService extends AService{
  @override
  start() async{
    await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 15));
  }





}
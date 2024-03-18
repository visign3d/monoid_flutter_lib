

import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.url, this.padding});

  final String url;

  final EdgeInsets? padding;



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: FastCachedImage(url: url,fit: BoxFit.fitWidth,),
    );
  }
}

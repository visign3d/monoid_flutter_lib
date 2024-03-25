import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';



import '../../features/firebase/firebase_service.dart';

// class FireImage extends StatelessWidget {
//   FireImage({super.key, required this.imgName, this.width, this.height});
//
//   final double? width;
//   final double? height;
//   final String imgName;
//
//   //FirebaseService firebaseService = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: firebaseService.getImageURL(imgName),
//         builder: (context, s) {
//           if (s.connectionState == ConnectionState.done && s.hasData) {
//             return CachedNetworkImage(
//               width: width,
//               height: height,
//               imageUrl: s.data!,
//               placeholder: (c, p) => Center(
//                 child: Container(
//                   height: 10,
//                   width: 10,
//                   color: Colors.grey,
//                 ),
//               ),
//             );
//           }
//           return Container();
//         });
//   }
// }

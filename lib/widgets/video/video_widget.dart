import 'package:flutter/widgets.dart';
import 'package:video_player_web_hls/video_player_web_hls.dart';
import 'package:video_player/video_player.dart';


class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, required this.url});

  final String url;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _videoPlayerController;

  late Future _initializeFuture;

  @override
  void initState() {
    print('init video');
    super.initState();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _initializeFuture=_videoPlayerController.initialize().then((value) {
       setState(() {

       });
     });


    _videoPlayerController.setLooping(true);
    _videoPlayerController.setVolume(0);
    _videoPlayerController.play();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.done) {
          return AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController));
        } else {
          return const Placeholder();
        }
      },
      future: _initializeFuture,
    );
  }
}

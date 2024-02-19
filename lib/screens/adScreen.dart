//packages
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VidAd extends StatefulWidget {
  @override
  _VidAd createState() => _VidAd();
}

class _VidAd extends State<VidAd> {
  late VideoPlayerController controller;
  late bool _visible;

  @override
  void initState() {
    loadVideoPlayer();
    _visible = true;
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset('./assets/vids/ad.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) => controller.play());
  }

  getVideoPosition() {
    var duration = Duration(
        milliseconds: controller.value.position.inMilliseconds.round());
    return [duration.inSeconds, duration.inMilliseconds]
        .map((seg) => seg.remainder(60).toString().padLeft(2, '0'))
        .join(':');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      replacement: Container(),
      child: Container(
        color: Colors.black87,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 250),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.red,
                child: const Text(
                  'WATCH AD TO SPIN WHEEL',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: VideoProgressIndicator(
                controller,
                allowScrubbing: true,
                colors: const VideoProgressColors(
                  bufferedColor: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                onPressed: () {
                  setState(
                    () {
                      getVideoPosition() == '10:22'
                          ? _visible = false
                          : _visible = true;
                    },
                  );
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

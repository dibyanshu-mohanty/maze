import 'dart:io';
import 'package:better_player/better_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:maze/theme/app_dimens.dart';
import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:maze/view/utils/baseappbar.dart';
// ignore: depend_on_referenced_packages
import 'package:video_player/video_player.dart';

import '../../../theme/app_colors.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({
    Key? key,
    this.title = 'Chewie Demo',
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerScreenState();
  }
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  TargetPlatform? _platform;
  late VideoPlayerController _videoPlayerController1;
  ChewieController? _chewieController;
  int? bufferDelay;
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  List<String> srcs = ["assets/images/video.mp4"];
// https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4
  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");
    await Future.wait([
      _videoPlayerController1.initialize(),
    ]);
    _createChewieController();
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoInitialize: true,
      progressIndicatorDelay:
          bufferDelay != null ? Duration(milliseconds: bufferDelay!) : null,
      hideControlsTimer: const Duration(seconds: 1),
      fullScreenByDefault: true,
      allowFullScreen: true,
      aspectRatio: 16 / 9,
      showControls: true,
      allowedScreenSleep: false,
      showControlsOnInitialize: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: AppColors.colorWhite,
          bufferedColor: AppColors.colorGrey2,
          handleColor: AppColors.colorWhite.withOpacity(0.4),
          backgroundColor: AppColors.colorGrey),
      cupertinoProgressColors: ChewieProgressColors(
          playedColor: AppColors.colorWhite,
          bufferedColor: AppColors.colorGrey2,
          handleColor: AppColors.colorWhite.withOpacity(0.4),
          backgroundColor: AppColors.colorGrey),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Column(
            children: [
              BaseAppBar(title: "Task 6", appBar: AppBar(), mLeftAction: (){
                Navigator.pop(context);
              }),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimens.margin10,vertical: Dimens.margin15),
                child: _chewieController != null &&
                        _chewieController!
                            .videoPlayerController.value.isInitialized
                    ? Chewie(
                        controller: _chewieController!,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(height: 20),
                          Text('Loading'),
                        ],
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

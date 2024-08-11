import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/pod_getx_video_controller.dart';

class VideoWatermark extends StatelessWidget {
  final String tag;

  const VideoWatermark({
    required this.tag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: GetBuilder<PodGetXVideoController>(
        tag: tag,
        id: 'watermark',
        builder: (podCtr) {
          if (podCtr.videoWatermark == null || !podCtr.isWatermarkVisible) {
            return const SizedBox.shrink();
          }

          return podCtr.videoWatermark!;
        },
      ),
    );
  }
}

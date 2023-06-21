import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:signup/src/common_widgets/fade_animation/fade_inanimation.dart';

import '../../constants/image_strings.dart';
import 'splash_scrren_controller.dart';

class TFadeinAnimation extends StatelessWidget {
  TFadeinAnimation({
    super.key,
    required this.durationInMs,
    this.animate,
    required this.child,
  });

  final controller = Get.put(Fade_in_animation_controller());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
          //child: Image(image: AssetImage(tSplashTopIcon)),
        ),
      ),
    );
  }
}

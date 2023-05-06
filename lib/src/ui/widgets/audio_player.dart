import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../helpers/list_audio_player_controller.dart';

class VoiceWidget extends StatefulWidget {
  final String url;

  final Duration audioLength;

  final ListAudioPlayer Function() listAudioPlayerGet;

  const VoiceWidget(
      {super.key,
      required this.listAudioPlayerGet,
      required this.audioLength,
      required this.url});

  @override
  // ignore: library_private_types_in_public_api
  _VoiceWidgetState createState() => _VoiceWidgetState();
}

class _VoiceWidgetState extends State<VoiceWidget>
    with SingleTickerProviderStateMixin {
  final VoicePlayerAnimateController playerController =
      VoicePlayerAnimateController();

  late ListAudioPlayer _player;

  @override
  void initState() {
    _player = widget.listAudioPlayerGet();
    _player.addListener(_handleListEvent);

    super.initState();
  }

  void notifier(_) {
    setState(() {});
  }

  void _handleListEvent(String url) {
    if (url != widget.url) {
      for (var element in playerController.stop) {
        element();
      }
      return;
    }
  }

  @override
  void dispose() {
    _player.removeListener(_handleListEvent);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _player.play(widget.url);
        setState(() {});
      },
      child: VoicePlayingAnimation(
        playerController: playerController,
        reverse: true,
        iconColor: const Color(0xff54c35a),
      ),
    );
  }
}

///播放动画
class VoicePlayingAnimation extends StatefulWidget {
  const VoicePlayingAnimation(
      {super.key,
      required this.playerController,
      required this.reverse,
      this.iconColor});

  final bool reverse;

  final Color? iconColor;

  final VoicePlayerAnimateController playerController;

  @override
  State createState() => _VoicePlayingAnimationState();
}

class _VoicePlayingAnimationState extends State<VoicePlayingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isNeedPlay = false;

  @override
  void didUpdateWidget(VoicePlayingAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.playerController == widget.playerController) {
      return;
    }

    widget.playerController.addStopListener(stop);
    oldWidget.playerController.removeStopListener(stop);
  }

  @override
  void dispose() {
    if (controller.isAnimating) {
      debugPrint('销毁正在播放的语音');
    }
    widget.playerController.removeStopListener(stop);
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 0.2);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    widget.playerController.addStopListener(stop);
  }

  void start() {
    controller.reset();
    controller.forward();
    setState(() {
      isNeedPlay = true;
    });
  }

  void stop() {
    if (controller.isAnimating) {
      controller.stop();
      setState(() {
        isNeedPlay = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.reverse ? math.pi : 0,
      child: AnimatedBuilder(
        builder: (_, __) {
          return IntrinsicWidth(
            child: SizedBox.fromSize(
              size: const Size(40, 55),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Opacity(
                    opacity: isNeedPlay ? controller.value : 0.6,
                    child: CustomPaint(
                      size: const Size(20, 55),
                      painter:
                          VoicePainter(1, false, iconColor: widget.iconColor),
                    ),
                  ),
                  Opacity(
                    opacity: isNeedPlay ? (controller.value - 0.35).abs() : 0.6,
                    child: CustomPaint(
                      size: const Size(10, 30),
                      painter:
                          VoicePainter(2, false, iconColor: widget.iconColor),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        animation: controller,
      ),
    );
  }
}

class VoicePainter extends CustomPainter {
  final int rate;

  final bool fill;

  final Color? iconColor;

  VoicePainter(this.rate, this.fill, {this.iconColor});

  @override
  void paint(Canvas canvas, Size size) {
    const double paintWidth = 1.7;

    final Paint paint = Paint()
      ..color = iconColor ?? const Color(0xffffffff)
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = paintWidth
      ..style = PaintingStyle.stroke;

    canvas.clipRect(Rect.fromLTRB(
        0, 0, (size.width + 2 * paintWidth) / 2, size.height + 2 * paintWidth));

    final Rect rect2 = Rect.fromLTWH(paintWidth, 0, size.width, size.height);
    canvas.drawArc(
      rect2,
      0,
      2 * math.pi,
      fill,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

///背景渐变动画
class VoiceGradientAnimation extends StatefulWidget {
  final int second;
  final Color? iconColor;

  const VoiceGradientAnimation({
    super.key,
    required this.playerController,
    required this.second,
    this.iconColor,
  });

  final VoicePlayerAnimateController playerController;

  @override
  State<StatefulWidget> createState() => _VoiceGradientAnimationState();
}

class _VoiceGradientAnimationState extends State<VoiceGradientAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(seconds: widget.second));
    widget.playerController.addStopListener(stop);
  }

  void start() {
    setState(() {
      _isAnimating = true;
    });
    controller.forward(from: 0).then((_) => setState(() {
          _isAnimating = false;
        }));
  }

  void stop() {
    if (controller.isAnimating) {
      setState(() {
        _isAnimating = false;
      });
      controller.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isAnimating == true) {
      return IntrinsicWidth(
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(
              color: const Color(0xff54c35a),
            )),
            SizeTransition(
              axis: Axis.horizontal,
              sizeFactor: controller,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xffbfbfbf),
              ),
            ),
          ],
        ),
      );
    }

    return IntrinsicWidth(
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: const Color(0xff54c35a),
          )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    widget.playerController.removeStopListener(stop);
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(VoiceGradientAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.playerController == widget.playerController) {
      return;
    }

    widget.playerController.addStopListener(stop);
    oldWidget.playerController.removeStopListener(stop);
  }
}

///音频播放多个动画统一控制器
/// (一个语音播放条的多个动画统一控制器)
class VoicePlayerAnimateController {
  final List<VoidCallback> stop = [];

  void addStopListener(VoidCallback voidCallback) {
    stop.add(voidCallback);
  }

  void removeStopListener(VoidCallback voidCallback) {
    stop.remove(voidCallback);
  }
}

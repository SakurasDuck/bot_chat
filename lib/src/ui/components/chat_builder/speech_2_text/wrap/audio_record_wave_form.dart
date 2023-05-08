import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// 正在录制语音时显示的波浪形动画widget
/// [waveGet] 录制语音控制器
/// [enable] 是否启用
/// [basePercentage] 波浪高度百分比
/// [minValue] 波浪最小高
/// [maxValue] 波浪最大高
/// [blankPercentage] 波浪宽度百分比
/// [color] 波浪颜色
/// [columnarCount] 组成波浪的柱形条数
class AudioRecordWaveform extends StatefulWidget {
  final double Function() waveGet;
  final bool enable;

  //用于高度
  final double basePercentage;
  final double minValue;
  final double maxValue;

  //用于宽度
  final double blankPercentage;
  final Color color;

  final int columnarCount; //组成波浪的柱形条数

  const AudioRecordWaveform({
    required this.waveGet,
    required this.enable,
    Key? key,
    this.blankPercentage = 0.6,
    this.basePercentage = 0.15,
    this.color = Colors.red,
    this.minValue = 58,
    this.maxValue = 90,
    this.columnarCount = 30,
  }) : super(key: key);

  @override
  _AudioRecordWaveformState createState() => _AudioRecordWaveformState();
}

class _AudioRecordWaveformState extends State<AudioRecordWaveform>
    with SingleTickerProviderStateMixin {
  List<double> values = [];
  List<double> displayValues = [];
  List<double> empty = [];
  Timer? timer;
  final Random _random = Random();

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    values = List<double>.filled(widget.columnarCount, 0.0);
    displayValues = List<double>.filled(widget.columnarCount, 0.0);
    empty = List<double>.filled(widget.columnarCount, 0.0);
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
        lowerBound: -1,
        upperBound: 1);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      } else if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });

    _animationController.addListener(() {
      for (int i = 0; i < values.length; i++) {
        displayValues[i] = values[i] + _animationController.value;
      }
      setState(() {});
    });

    if (widget.enable) {
      _start();
    }
  }

  void _start() {
    timer ??= Timer.periodic(const Duration(milliseconds: 100), (timer) {
      addNewValue(widget.waveGet.call() +
          _random.nextInt(2) * (_random.nextBool() ? -1 : 1));
      setState(() {});
    });
    if (!_animationController.isAnimating) {
      _animationController.forward();
    }
    values.fillRange(0, values.length, 0);
    displayValues.fillRange(0, values.length, 0);
  }

  void _stop() {
    if (timer != null) {
      timer!.cancel();
      timer = null;
    }
    if (_animationController.isAnimating) {
      _animationController.stop();
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AudioRecordWaveform oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enable != widget.enable) {
      if (widget.enable) {
        _start();
      } else {
        _stop();
      }
    }
  }

  void addNewValue(double v) {
    values.setAll(0, values.getRange(1, values.length));
    values.last = v;
  }

  @override
  Widget build(BuildContext context) {
    return Waveform(
      values: displayValues,
      blankPercentage: widget.blankPercentage,
      basePercentage: widget.basePercentage,
      color: widget.color,
      maxValue: widget.maxValue,
      minValue: widget.minValue,
    );
  }
}

/// 静态波浪的绘制widget
/// [values] 波浪数组
/// [basePercentage] 波浪高度百分比
/// [minValue] 波浪最小高
/// [maxValue] 波浪最大高
/// [blankPercentage] 波浪宽度百分比
/// [color] 波浪颜色
class Waveform extends StatelessWidget {
  final List<double> values;

  //用于高度
  final double basePercentage;
  final double minValue;
  final double maxValue;

  //用于宽度
  final double blankPercentage;
  final Color color;

  const Waveform({
    required this.values,
    this.blankPercentage = 0.2,
    this.basePercentage = 0.2,
    this.color = Colors.red,
    Key? key,
    this.minValue = 58,
    this.maxValue = 90,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WaveformPainter(
          values: values,
          minValue: minValue,
          maxValue: maxValue,
          basePercentage: basePercentage,
          color: color,
          blankPercentage: blankPercentage),
    );
  }
}

/// 自定义绘制波浪
/// [values] 波浪数组
/// [basePercentage] 波浪高度百分比
/// [minValue] 波浪最小高
/// [maxValue] 波浪最大高
/// [blankPercentage] 波浪宽度百分比
/// [color] 波浪颜色
class WaveformPainter extends CustomPainter {
  final List<double> values;
  final double maxValue;
  final double minValue;

  //用于高度
  final double basePercentage;

  //用于宽度
  final double blankPercentage;
  final Color color;

  WaveformPainter(
      {required this.values,
      required this.maxValue,
      required this.minValue,
      this.basePercentage = 0.1,
      this.blankPercentage = 0.1,
      this.color = Colors.blueAccent});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    final int total = values.length;
    final int blankTotal = total - 1;

    final double blankWidth = (size.width * blankPercentage) / blankTotal;
    final double itemWidth = (size.width * (1 - blankPercentage)) / total;

    final double baseHeight = size.height * basePercentage;
    final double levelTotalHeight = size.height - baseHeight;

    final List<double> heightList = [];

    for (var v in values) {
      double extra;
      if (v <= minValue) {
        extra = 0;
      } else {
        extra = (v - minValue) / (maxValue - minValue);
        extra = min(1, extra);
      }
      heightList.add(baseHeight + levelTotalHeight * extra);
    }

    double xOffset = itemWidth / 2;
    final double yCenter = size.height / 2;
    for (var h in heightList) {
      final Rect rect = Rect.fromCenter(
          center: Offset(xOffset, yCenter), width: itemWidth, height: h);

      canvas.drawRect(rect, paint);

      xOffset += blankWidth + itemWidth;
    }
  }

  @override
  bool shouldRepaint(WaveformPainter oldDelegate) {
    return true;
  }
}

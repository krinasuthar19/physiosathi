import 'dart:math' as math;
import 'package:flutter/material.dart';

class CountDownTimerWidget extends StatefulWidget {
  @override
  _CountDownTimerWidgetState createState() => _CountDownTimerWidgetState();
}

class _CountDownTimerWidgetState extends State<CountDownTimerWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  String get timerString {
    Duration duration = controller.duration! * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.center,
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: CustomPaint(
                                painter: CustomTimerPainter(
                                  animation: controller,
                                  backgroundColor: Colors.white,
                                  color: themeData.indicatorColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        timerString,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text(
                        "Left",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      return Container(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 97, 88, 88),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {
                            if (controller.isAnimating)
                              controller.stop();
                            else {
                              controller.reverse(
                                from: controller.value == 0.0
                                    ? 1.0
                                    : controller.value,
                              );
                            }
                          },
                          child: Icon(
                            controller.isAnimating
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 20,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    required this.animation,
    required this.backgroundColor,
    required this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}

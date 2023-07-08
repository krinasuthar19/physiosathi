import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample5 extends StatefulWidget {
  const LineChartSample5({
    super.key,
    Key? color,
    Color? gradientColor1,
    Color? gradientColor2,
    Color? gradientColor3,
    Color? indicatorStrokeColor,
  })  : gradientColor1 = gradientColor1 ?? Colors.blue,
        gradientColor2 =
            gradientColor2 ?? const Color.fromARGB(255, 27, 123, 202),
        gradientColor3 =
            gradientColor3 ?? const Color.fromARGB(255, 21, 98, 161),
        indicatorStrokeColor = indicatorStrokeColor ?? Colors.yellow;

  final Color gradientColor1;
  final Color gradientColor2;
  final Color gradientColor3;
  final Color indicatorStrokeColor;

  @override
  State<LineChartSample5> createState() => _LineChartSample5State();
}

class _LineChartSample5State extends State<LineChartSample5> {
  List<int> showingTooltipOnSpots = [1, 3, 5];

  List<FlSpot> get allSpots => const [
        FlSpot(0, 1),
        FlSpot(1, 2),
        FlSpot(2, 1.5),
        FlSpot(3, 3),
        FlSpot(4, 3.5),
        FlSpot(5, 5),
        FlSpot(6, 8),
      ];

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: true,
        barWidth: 4,
        shadow: const Shadow(
          blurRadius: 1,
        ),
        belowBarData: BarAreaData(
          show: true,
        ),
        dotData: const FlDotData(show: false),
        gradient: LinearGradient(
          colors: [
            widget.gradientColor1,
            widget.gradientColor2,
            widget.gradientColor3,
          ],
          stops: const [0.1, 0.4, 0.9],
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    return AspectRatio(
      aspectRatio: 2.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10,
        ),
        child: LineChart(
          LineChartData(
            showingTooltipIndicators: showingTooltipOnSpots.map((index) {
              return ShowingTooltipIndicators([
                LineBarSpot(
                  tooltipsOnBar,
                  lineBarsData.indexOf(tooltipsOnBar),
                  tooltipsOnBar.spots[index],
                ),
              ]);
            }).toList(),
            lineTouchData: LineTouchData(
              enabled: true,
              handleBuiltInTouches: false,
              touchCallback: (FlTouchEvent event, LineTouchResponse? response) {
                if (response == null || response.lineBarSpots == null) {
                  return;
                }
                if (event is FlTapUpEvent) {
                  final spotIndex = response.lineBarSpots!.first.spotIndex;
                  setState(() {
                    if (showingTooltipOnSpots.contains(spotIndex)) {
                      showingTooltipOnSpots.remove(spotIndex);
                    } else {
                      showingTooltipOnSpots.add(spotIndex);
                    }
                  });
                }
              },
              mouseCursorResolver:
                  (FlTouchEvent event, LineTouchResponse? response) {
                if (response == null || response.lineBarSpots == null) {
                  return SystemMouseCursors.basic;
                }
                return SystemMouseCursors.click;
              },
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
                return spotIndexes.map((index) {
                  return TouchedSpotIndicatorData(
                    const FlLine(
                      color: Colors.pink,
                    ),
                    FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 8,
                        color: lerpGradient(
                          barData.gradient!.colors,
                          barData.gradient!.stops!,
                          percent / 100,
                        ),
                        strokeWidth: 2,
                        strokeColor: widget.indicatorStrokeColor,
                      ),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.pink,
                tooltipRoundedRadius: 8,
                getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                  return lineBarsSpot.map((lineBarSpot) {
                    return LineTooltipItem(
                      lineBarSpot.y.toString(),
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }).toList();
                },
              ),
            ),
            lineBarsData: lineBarsData,
            minY: 0,
            titlesData: const FlTitlesData(
              show: false,
            ),
            gridData: const FlGridData(
              show: false,
            ),
            borderData: FlBorderData(
              show: false,
            ),
          ),
        ),
      ),
    );
  }
}

/// Lerps between a [LinearGradient] colors, based on [t]
Color lerpGradient(List<Color> colors, List<double> stops, double t) {
  if (colors.isEmpty) {
    throw ArgumentError('"colors" is empty.');
  } else if (colors.length == 1) {
    return colors[0];
  }

  if (stops.length != colors.length) {
    stops = [];

    /// provided gradientColorStops is invalid and we calculate it here
    colors.asMap().forEach((index, color) {
      final percent = 1.0 / (colors.length - 1);
      stops.add(percent * index);
    });
  }

  for (var s = 0; s < stops.length - 1; s++) {
    final leftStop = stops[s];
    final rightStop = stops[s + 1];
    final leftColor = colors[s];
    final rightColor = colors[s + 1];
    if (t <= leftStop) {
      return leftColor;
    } else if (t < rightStop) {
      final sectionT = (t - leftStop) / (rightStop - leftStop);
      return Color.lerp(leftColor, rightColor, sectionT)!;
    }
  }
  return colors.last;
}

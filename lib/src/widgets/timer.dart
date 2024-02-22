import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  final TextStyle? style;
  const TimerWidget({Key? key, this.style}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late DateTime _startTime;
  final DateFormat _format = DateFormat.Hms();
  late Timer _timer;

  @override
  initState() {
    super.initState();
    _startTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      _updateTime();
    });
  }

  _updateTime() {
    setState(() {
      _startTime = DateTime.now();
    });
  }

  @override
  dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(_format.format(_startTime),
          style: widget.style ?? const TextStyle(color: Colors.white)),
    );
  }
}

class TimeElapsedText extends StatefulWidget {
  const TimeElapsedText({Key? key, required this.dateTime, this.textStyle})
      : super(key: key);
  final DateTime dateTime;
  final TextStyle? textStyle;

  @override
  State<TimeElapsedText> createState() => _TimeElapsedTextState();
}

class _TimeElapsedTextState extends State<TimeElapsedText> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        const Duration(seconds: 1), (Timer t) => setState(() {}));
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var diff = (DateTime.now()).difference(widget.dateTime);
    return Text(
      "${diff.inHours.toString().padLeft(2, '0')}:"
      "${diff.inMinutes.remainder(60).toString().padLeft(2, '0')}:"
      "${(diff.inSeconds.remainder(60).toString().padLeft(2, '0'))}",
      style: widget.textStyle,
      overflow: TextOverflow.fade,
    );
  }
}

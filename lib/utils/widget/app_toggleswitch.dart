import 'package:flutter/material.dart';

class AppToggleSwitch extends StatefulWidget {
  final double width;
  final double height;

  const AppToggleSwitch({Key? key, this.width = 60.0, this.height = 30.0})
      : super(key: key);

  @override
  State<AppToggleSwitch> createState() => _AppToggleSwitchState();
}

class _AppToggleSwitchState extends State<AppToggleSwitch> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSwitched = !_isSwitched;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.height / 2),
          color: _isSwitched
              ? Colors.green
              : const Color.fromARGB(255, 221, 221, 221),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              left: _isSwitched ? widget.width - widget.height : 0.0,
              child: Container(
                width: widget.height,
                height: widget.height,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
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

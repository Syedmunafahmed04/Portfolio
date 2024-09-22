import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final Widget Tablet;
  final Widget Mobile;
  final Widget Desktop;
  const Responsive(
      {super.key,
      required this.Tablet,
      required this.Mobile,
      required this.Desktop});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return widget.Mobile;
      } else if (constraints.maxWidth < 900) {
        return widget.Tablet;
      } else {
        return widget.Desktop;
      }
    });
  }
}

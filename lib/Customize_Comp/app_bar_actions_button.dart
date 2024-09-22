import 'package:flutter/material.dart';
import 'package:portfolio/TextStyles/TextStyles.dart';

class App_Bar_Actions_buttons extends StatefulWidget {
  final String title;

  const App_Bar_Actions_buttons({
    super.key,
    required this.title,
  });

  @override
  State<App_Bar_Actions_buttons> createState() =>
      _App_Bar_Actions_buttonsState();
}

class _App_Bar_Actions_buttonsState extends State<App_Bar_Actions_buttons> {
  bool hovering_color = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hovering_color = value;
        });
      },
      child: Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: hovering_color ? Colors.red : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.title,
            style: app_bar_actions_buttons,
          ),
        ),
      ),
    );
  }
}

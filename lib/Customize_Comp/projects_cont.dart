import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/TextStyles/TextStyles.dart';

class projects extends StatefulWidget {
  final String image_name;
  final project_name;
  final project_description;
  const projects(
      {super.key,
      required this.image_name,
      this.project_name,
      this.project_description});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  bool project_button_hovering = false;
  @override
  Widget build(BuildContext context) {
    var Screen_Height = MediaQuery.of(context).size.height;
    var Screen_Width = MediaQuery.of(context).size.width;
    return Container(
      margin: Screen_Width < 500
          ? EdgeInsets.symmetric(vertical: 10)
          : EdgeInsets.all(0),
      height: Screen_Width < 1000 ? Screen_Height / 3.5 : Screen_Height / 3,
      width: Screen_Width < 400
          ? Screen_Width / 2
          : Screen_Width < 500
              ? Screen_Width / 2.5
              : Screen_Width < 650
                  ? Screen_Width / 3
                  : Screen_Width < 900
                      ? Screen_Width / 4
                      : Screen_Width < 1000
                          ? Screen_Width / 3.9
                          : Screen_Width / 5,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.indigo.shade400,
            Colors.blue.shade200,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: CircleAvatar(
              radius: Screen_Width > 1000 ? 20 : 15,
              backgroundImage: AssetImage(widget.image_name),
              backgroundColor: Colors.transparent,
            ),
          ),
          AutoSizeText(
            widget.project_name,
            minFontSize: 5,
            maxFontSize: 14,
            maxLines: 1,
            style: web_projects_name,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              widget.project_description,
              minFontSize: 5,
              maxFontSize: 10,
              maxLines: 6,
              style: web_projects_description,
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                project_button_hovering = value;
              });
            },
            child: Container(
              margin: EdgeInsets.all(5),
              height:
                  Screen_Width < 1000 ? Screen_Height / 24 : Screen_Height / 22,
              width: Screen_Width < 500
                  ? Screen_Width / 4.5
                  : Screen_Width < 570
                      ? Screen_Width / 7
                      : Screen_Width < 650
                          ? Screen_Width / 8
                          : Screen_Width < 900
                              ? Screen_Width / 9
                              : Screen_Width / 12,
              decoration: BoxDecoration(
                  color: project_button_hovering
                      ? Colors.indigo.shade800
                      : Colors.transparent,
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: AutoSizeText(
                    'Check it out !',
                    style: web_projects_button,
                    maxFontSize: 13,
                    minFontSize: 8,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

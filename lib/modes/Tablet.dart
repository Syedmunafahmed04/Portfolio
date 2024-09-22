import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Customize_Comp/app_bar_actions_button.dart';
import 'package:portfolio/Customize_Comp/projects_cont.dart';
import 'package:portfolio/TextStyles/TextStyles.dart';

class Tablet_View extends StatefulWidget {
  const Tablet_View({super.key});

  @override
  State<Tablet_View> createState() => _Tablet_ViewState();
}

class _Tablet_ViewState extends State<Tablet_View> {
  List<String> project_image_names = [
    'assets/images/targo.png',
    'assets/images/easypaisa logo.png',
  ];
  List<String> project_name = [
    'TARGO',
    'Easypaisa Clone',
  ];
  List<String> project_description = [
    "A digital currency app with a sleek and modern UI designed for efficient and secure cryptocurrency transactions.",
//
    "Replicates the interface of the popular mobile payment app, offering a clean and intuitive design for seamless financial transactions.",
  ];

  List<FaIcon> Social_Accounts_Icons = [
    FaIcon(
      FontAwesomeIcons.github,
      color: Colors.black,
      size: 20,
    ),
    FaIcon(
      FontAwesomeIcons.linkedin,
      size: 20,
      color: Colors.blue,
    ),
    FaIcon(
      FontAwesomeIcons.envelope,
      size: 20,
      color: Colors.red,
    ),
  ];

  List<Widget> Social_Accounts_Name = [
    AutoSizeText(
      'Syedmunafahmed04',
      maxFontSize: 15,
      minFontSize: 5,
      maxLines: 1,
      style: mob_social_accounts_name,
    ),
    AutoSizeText(
      'Syed Munaf Ahmed',
      maxLines: 1,
      maxFontSize: 15,
      minFontSize: 5,
      style: mob_social_accounts_name,
    ),
    AutoSizeText(
      'Munafahmed389@gmail.com',
      maxLines: 1,
      maxFontSize: 15,
      minFontSize: 5,
      style: mob_social_accounts_name,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final Screen_Height = MediaQuery.of(context).size.height;
    final Screen_Width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo.shade300,
          title: AutoSizeText('Syed Munaf Ahmed', style: app_bar_heading),
          // actions: [
          //   App_Bar_Actions_buttons(title: 'About'),
          //   App_Bar_Actions_buttons(title: 'Skills'),
          //   App_Bar_Actions_buttons(title: 'Projects'),
          //   App_Bar_Actions_buttons(title: 'Contact'),
          //   SizedBox(
          //     width: 20,
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        width: Screen_Width / 4,
                        height: Screen_Height / 4,
                        child: Image.asset('assets/images/workstation.png'),
                      ),
                    ),
                    Container(
                      width: Screen_Width / 4,
                      height: Screen_Height / 4.8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.indigo.shade500, Colors.blue],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 10),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 10),
                                child: AutoSizeText(
                                  'ABOUT ME',
                                  style: web_abouts_headings,
                                  maxFontSize: 15,
                                  minFontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                              right: 8,
                            ),
                            child: AutoSizeText(
                              """As a novice Flutter developer, I'm eager to craft visually appealing and intuitive UIs despite my limited experience Passionate about learning and growth, I focus on creating engaging designs with a fresh perspective.

Let's explore innovative solutions together!""",
                              minFontSize: 4,
                              maxFontSize: 12,
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: AutoSizeText(
                      'MORE ABOUT ME',
                      textAlign: TextAlign.center,
                      minFontSize: 5,
                      maxFontSize: 15,
                      maxLines: 2,
                      style: web_abouts_headings,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Screen_Width < 530
                    ? Screen_Height / 6.5
                    : Screen_Height / 7,
                width: Screen_Width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade100,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: Colors.indigo.shade600, width: 2),
                    boxShadow: [
                      BoxShadow(color: Colors.indigo.shade400, blurRadius: 8)
                    ]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 8.0),
                    child: AutoSizeText(
                      """I am currently pursuing a BS in Computer Science from Hamdard University, Karachi (Main Campus), with an expected graduation date of 2026. My focus is on mobile app development, particularly in Flutter, where I am continuously honing my skills.
                      
Through hands-on projects, I demonstrate my growing expertise in this field. With a strong foundation in computer science principles, I am eager to apply my knowledge to real-world challenges. I am also seeking a mentor to help polish my skills and guide me further in my professional journey. My portfolio showcases my passion for innovation and problem-solving.""",
                      minFontSize: 7,
                      maxFontSize: 20,
                      maxLines: Screen_Width < 530 ? 8 : 7,
                      style: web_more_abouts_description,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              AutoSizeText(
                'TOP SKILLS',
                maxLines: 2,
                style: web_abouts_headings,
              ),
              SizedBox(
                width: Screen_Width / 5,
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: Screen_Height / 3,
                width: Screen_Width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: Screen_Width < 700
                            ? Screen_Height / 6
                            : Screen_Width < 850
                                ? Screen_Height / 5
                                : Screen_Height / 4.2,
                        width: Screen_Width / 6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 10),
                            ]),
                        child: Image.asset(
                          'assets/images/f logo.png',
                          height: 80,
                          width: 80,
                        )),
                    Container(
                        height: Screen_Width < 700
                            ? Screen_Height / 6
                            : Screen_Width < 850
                                ? Screen_Height / 5
                                : Screen_Height / 4.2,
                        width: Screen_Width / 6.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                              ),
                            ]),
                        child: Image.asset(
                          'assets/images/d logo.png',
                          height: 80,
                          width: 80,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'RECENT PROJECTS',
                    style: web_abouts_headings,
                  ),
                ],
              ),
              SizedBox(
                width: Screen_Width / 5,
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    projects(
                      image_name: project_image_names[0],
                      project_name: project_name[0],
                      project_description: project_description[0],
                    ),
                    projects(
                      image_name: project_image_names[1],
                      project_name: project_name[1],
                      project_description: project_description[1],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'CONTACT ME',
                style: web_abouts_headings,
              ),
              SizedBox(
                width: Screen_Width / 5,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.indigo.shade100,
                        Colors.grey.shade300
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  width: Screen_Width / 1.1,
                  height: Screen_Height / 4.4,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: Social_Accounts_Name.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Social_Accounts_Icons[index],
                          title: Social_Accounts_Name[index],
                        );
                      })),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

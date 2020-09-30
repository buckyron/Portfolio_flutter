import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/recentWorks.dart';
import 'package:portfolio/servicesProvided.dart';
import 'package:portfolio/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    // <a href="https://pngtree.com/so/app?sce=attr">app png from pngtree.com</a>
                    ///Title Image.
                    Image.asset(
                      'images/titleImage.png',
                      width: width,
                      fit: BoxFit.fitWidth,
                    ),

                    ///About Me.
                    AboutMe(width: width),

                    ///Services Offered.
                    Services(width: width, height: height),

                    SizedBox(
                      height: 30,
                    ),

                    // <a href="https://pngtree.com/so/people?sce=attr">people png from pngtree.com</a>
                    ///Recent Works.
                    RecentWorks(width: width),

                    ///Feedback received.
                    FeedbackReceived(width: width),

                    Container(
                      height: 200,
                      width: width,
                      color: kPrimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 1200,
                          ),
                          child: Container(
                            height: 200,
                            width: width,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  'Contact ME',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: kTitleFont,
                                      fontSize: 40),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://github.com/buckyron';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.github,
                                        color: Colors.white,
                                        size: 70,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://www.linkedin.com/in/hari-vigneshwaran-5237081a7/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.linkedin,
                                        color: Colors.white,
                                        size: 70,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://www.instagram.com/absurd_swasher/?hl=en';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.white,
                                        size: 70,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=harivicky2020@gmail.com&body=my-text';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Icon(
                                        Icons.mail_outline,
                                        color: Colors.white,
                                        size: 70,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

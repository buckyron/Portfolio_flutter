import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class ContactME extends StatelessWidget {
  const ContactME({
    Key key,
    @required this.width,
    @required this.contactKey
  }) : super(key: key);

  final double width;
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactKey,
      height: 300,
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
                        const url = 'https://mail.google.com/mail/u/0/?view=cm&fs=1&to=harivicky2020@gmail.com&su=SUBJECT&body=BODY&tf=1';
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
                ),
                SizedBox(height: 50,),
                Text(
                  '© All credit goes to Hari Vigneshwaran - Copyrights 2020 Hari Vigneshwaran.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: kPrimaryFont,
                    color: Colors.white,
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

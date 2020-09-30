import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets/projectCard.dart';

class RecentWorks extends StatelessWidget {
  const RecentWorks({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Works',
                style: TextStyle(
                    color: kPrimaryColor, fontFamily: kTitleFont, fontSize: 40),
              ),
              SizedBox(height: 20),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 1200,
                ),
                child: Container(
                  width: width,
                  child: width > 700
                      ? GridView(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: width > 1200 ? 3 : 2),
                          children: [
                            ProjectCard(
                              color: kPrimaryColor,
                              imagePath: 'images/marketo.png',
                              title: 'Marketo',
                              description: 'Grocery Shopping Android App.',
                              client: 'Ganesh. S',
                              url:
                                  'https://play.google.com/store/apps/details?id=com.buckyron.firebasefluttertest&hl=en_IN',
                            ),
                            ProjectCard(
                                color: kTextColor,
                                imagePath: 'images/ams.png',
                                title: 'AMS',
                                description: 'Attendance Maintenance System.',
                                client: null,
                                url: 'http://sce-ams.herokuapp.com/'),
                            ProjectCard(
                                color: kPrimaryColor,
                                imagePath: 'images/buckyron.png',
                                title: 'Buckyron',
                                description: 'A Telegram Chatbot',
                                url: 'https://t.me/Buckyronbot')
                          ],
                        )
                      : Column(
                          children: [
                            ProjectCard(
                              color: kPrimaryColor,
                              imagePath: 'images/marketo.png',
                              title: 'Marketo',
                              description: 'Grocery Shopping Android App.',
                              client: 'Ganesh. S',
                              url:
                                  'https://play.google.com/store/apps/details?id=com.buckyron.firebasefluttertest&hl=en_IN',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ProjectCard(
                              color: kTextColor,
                              imagePath: 'images/ams.png',
                              title: 'AMS',
                              description: 'Attendance Maintenance System.',
                              client: null,
                              url: 'http://sce-ams.herokuapp.com/',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ProjectCard(
                              color: kPrimaryColor,
                              imagePath: 'images/buckyron.png',
                              title: 'Buckyron',
                              description: 'A Telegram Chatbot',
                              url: 'https://t.me/Buckyronbot',
                            )
                          ],
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

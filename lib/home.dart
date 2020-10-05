import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/contactMe.dart';
import 'package:portfolio/feedback.dart';
import 'package:portfolio/recentWorks.dart';
import 'package:portfolio/servicesProvided.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final aboutKey = new GlobalKey();
  final servicesKey = new GlobalKey();
  final recentKey = new GlobalKey();
  final feedbackKey = new GlobalKey();
  final contactKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'MENU ',
                  style: TextStyle(
                      fontFamily: kTitleFont, color: kPrimaryColor, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ///About Me.
                      ListTile(
                        onTap: () {
                          Scrollable.ensureVisible(aboutKey.currentContext);
                          Navigator.pop(context);
                        },
                        title: Text(
                          'About Me',
                          style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                        hoverColor: Colors.deepPurple[200],
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Colors.grey[300],
                      ),

                      ///Services offered.
                      ListTile(
                        onTap: () {
                          Scrollable.ensureVisible(servicesKey.currentContext);
                          Navigator.pop(context);
                        },
                        title: Text(
                          'Services Offered',
                          style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                        hoverColor: Colors.deepPurple[200],
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Colors.grey[300],
                      ),

                      ///Recent Works.
                      ListTile(
                        onTap: () {
                          Scrollable.ensureVisible(recentKey.currentContext);
                          Navigator.pop(context);
                        },
                        title: Text(
                          'Recent Works',
                          style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                        hoverColor: Colors.deepPurple[200],
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Colors.grey[300],
                      ),

                      ///Feedback.
                      ListTile(
                        onTap: () {
                          Scrollable.ensureVisible(feedbackKey.currentContext);
                          Navigator.pop(context);
                        },
                        title: Text(
                          'Feedback',
                          style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                        hoverColor: Colors.deepPurple[200],
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Colors.grey[300],
                      ),

                      ///Contact Me.
                      ListTile(
                        onTap: () {
                          Scrollable.ensureVisible(contactKey.currentContext);
                          Navigator.pop(context);
                        },
                        title: Text(
                          'Contact Me',
                          style: TextStyle(
                              fontFamily: kPrimaryFont,
                              color: kPrimaryColor,
                              fontSize: 20),
                        ),
                        hoverColor: Colors.deepPurple[200],
                      ),
                      Container(
                        height: 1,
                        width: width,
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ScaffoldBody(
          aboutKey: aboutKey,
          servicesKey: servicesKey,
          recentKey: recentKey,
          feedbackKey: feedbackKey,
          contactKey: contactKey,
          width: width,
          height: height),
    );
  }
}

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    Key key,
    @required this.width,
    @required this.height,
    @required this.aboutKey,
    @required this.servicesKey,
    @required this.recentKey,
    @required this.feedbackKey,
    @required this.contactKey,
  }) : super(key: key);

  final double width;
  final double height;

  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey recentKey;
  final GlobalKey feedbackKey;
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                      AboutMe(aboutKey: aboutKey, width: width),

                      ///Services Offered.
                      Services(servicesKey: servicesKey,width: width, height: height),

                      SizedBox(
                        height: 30,
                      ),

                      // <a href="https://pngtree.com/so/people?sce=attr">people png from pngtree.com</a>
                      ///Recent Works.
                      RecentWorks(recentKey: recentKey,width: width),

                      ///Feedback received.
                      FeedbackReceived(feedbackKey: feedbackKey,width: width),

                      ///Contact Me
                      ContactME(contactKey: contactKey,width: width)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: width < 700 ? height - (height - 15) : height - (height - 50),
          right: width < 700 ? width - (width - 10) : width - (width - 50),
          child: FloatingActionButton(
            child: Icon(
              Icons.menu,
              color: kPrimaryColor,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        )
      ],
    );
  }
}

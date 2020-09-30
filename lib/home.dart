import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/recentWorks.dart';
import 'package:portfolio/servicesProvided.dart';
import 'package:portfolio/widgets/projectCard.dart';
import 'constants.dart';

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


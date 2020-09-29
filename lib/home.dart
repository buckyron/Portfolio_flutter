import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/servicesProvided.dart';
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
      child: SingleChildScrollView(
        child: Container(
          height: width > 700 ? width < 1200? 2700: 2500 : 3100,
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

              SizedBox(height: 30,),

            // <a href="https://pngtree.com/so/people?sce=attr">people png from pngtree.com</a>
              ///Recent Works.
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 1200,
                    maxHeight: 500
                  ),
                  child: Container(
                    height: 500,
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Works',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: kTitleFont,
                              fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                  child: Container(
                color: Colors.deepPurple[200],
              ))
            ],
          ),
        ),
      ),
    );
  }
}



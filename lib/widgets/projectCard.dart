import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    @required this.color,
    @required this.imagePath,
    @required this.title,
    @required this.description,
    @required this.url,
    this.client,
  }) : super(key: key);

  final MaterialColor color;
  final String imagePath;
  final String title;
  final String description;
  final String client;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.transparent,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300,
            maxHeight: 250
          ),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 100,
                    color: color,
                    child: Image.asset(
                      imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: kTitleFont, fontSize: 22, color: color),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '  $description',
                            style: TextStyle(
                              fontFamily: kPrimaryFont,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          client != null
                              ? Row(
                                  children: [
                                    Text(
                                      'Client:',
                                      style: TextStyle(
                                          fontFamily: kPrimaryFont,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      client,
                                      style: TextStyle(
                                        fontFamily: kPrimaryFont,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              : Expanded(child: Container()),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              InkWell(
                                onTap: () async {
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

class Services extends StatelessWidget {
  const Services({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Services Offered ',
              style: TextStyle(
                  fontFamily: kTitleFont,
                  fontSize: 40,
                  color: kPrimaryColor),
            ),
          ),
          width > 1200
              ?

          ///Image and Skill list in the same row.
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ConstrainedBox(
              constraints:
              BoxConstraints(maxHeight: 600, maxWidth: 1200),
              child: Container(
                height: 400,
                width: width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: width, maxHeight: height),
                      child: Image.asset(
                        'images/skills.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(child: Container()),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/appDev.png',
                                        height: 150,
                                        width: 150,
                                      ),
                                      Text(
                                        'Mobile Application\nDevelopment',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily:
                                            kPrimaryFont,
                                            fontSize: 28,
                                            fontWeight:
                                            FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                )
                              ],
                            ),
                            Expanded(child: Container()),
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/webDev.png',
                                        height: 150,
                                        width: 150,
                                      ),
                                      Text(
                                        'Web Development',
                                        style: TextStyle(
                                            fontFamily:
                                            kPrimaryFont,
                                            fontSize: 30,
                                            fontWeight:
                                            FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'images/mlDev.png',
                                        height: 150,
                                        width: 150,
                                      ),
                                      Text(
                                        'ML App/REST API',
                                        style: TextStyle(
                                            fontFamily:
                                            kPrimaryFont,
                                            fontSize: 30,
                                            fontWeight:
                                            FontWeight.bold),
                                      )
                                    ],
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
          )
              :

          ///Image and Skills in a column.
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 700),
              child: Container(
                height: width > 700 ? 1050 : 1280,
                width: width,
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: width, maxHeight: height),
                      child: Image.asset(
                        'images/skills.png',
                        height: 600,
                        width: 600,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Container()),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/appDev.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                    Text(
                                      'Mobile Application\nDevelopment',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily:
                                          kPrimaryFont,
                                          fontSize: 28,
                                          fontWeight:
                                          FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          width > 700
                              ?

                          /// Skills listed in a row.
                          Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/webDev.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                    Text(
                                      'Web Development',
                                      style: TextStyle(
                                          fontFamily:
                                          kPrimaryFont,
                                          fontSize: 30,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/mlDev.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                    Text(
                                      'ML App/REST API',
                                      style: TextStyle(
                                          fontFamily:
                                          kPrimaryFont,
                                          fontSize: 30,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                              :

                          /// Skills listed in a column.
                          Container(
                            height: 420,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/webDev.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                    Text(
                                      'Web Development',
                                      style: TextStyle(
                                          fontFamily:
                                          kPrimaryFont,
                                          fontSize: 30,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/mlDev.png',
                                      height: 150,
                                      width: 150,
                                    ),
                                    Text(
                                      " ML App/REST API",
                                      style: TextStyle(
                                          fontFamily:
                                          kPrimaryFont,
                                          fontSize: 30,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

import 'package:flutter/material.dart';
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: width > 1200
                    ?

                    ///All of the about content in a single row.
                    ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 400, maxWidth: 1200),
                        child: Container(
                          height: 400,
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///About Me.
                              Text(
                                'About Me',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontFamily: kTitleFont,
                                    fontSize: 40),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 1200,
                                child: Row(
                                  children: [
                                    ///About Text.
                                    Container(
                                      width: 450,
                                      child: Text(
                                        "\t\t I'm a Computer Engineering Student "
                                        "in the final year of the degree. My "
                                        "interest in creating new things lead "
                                        "me to programming. I've been programming "
                                        "for more than four years. "
                                        "I have a passion for creating innovative "
                                        "Machine Learning apps and API's. "
                                        "I have built a number of Apps, websites and "
                                        "ML project over the years. Have a look at them below. ",
                                        style: TextStyle(
                                            color: kTextColor,
                                            fontFamily: kPrimaryFont,
                                            fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),

                                    ///Experience.
                                    Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      child: Container(
                                        height: 200,
                                        width: 150,
                                        color: Colors.deepPurple[200],
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '04',
                                              style: TextStyle(
                                                fontFamily: kTitleFont,
                                                fontSize: 50,
                                                color: Colors.white,
                                                shadows: <Shadow>[
                                                  Shadow(
                                                    offset: Offset(10.0, 10.0),
                                                    blurRadius: 3.0,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  Shadow(
                                                    offset: Offset(10.0, 10.0),
                                                    blurRadius: 8.0,
                                                    color: Colors.deepPurple,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 15.0),
                                              child: Text(
                                                'Years of Experience',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: kTextColor,
                                                    fontFamily: kPrimaryFont,
                                                    fontSize: 20),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),

                                    ///About Text in French.
                                    Container(
                                      width: 475,
                                      child: Text(
                                        "\t\t Je suis étudiant en génie informatique en dernière année du diplôme."
                                        "Mon intérêt pour la création de nouvelles choses m'a conduit à la programmation."
                                        "Je programme depuis plus de quatre ans."
                                        "J'ai une passion pour la création d'applications et d'API d'apprentissage automatique innovantes."
                                        "J'ai construit un certain nombre d'applications, de sites Web et de projets ML au fil des ans. Regardez-les ci-dessous. ",
                                        style: TextStyle(
                                            color: kTextColor,
                                            fontFamily: kPrimaryFont,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    :

                    ///About split into parts of a column.
                    width > 700
                        ? ///All of About me in a Column of two.
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 450, maxWidth: 700),
                            child: Container(
                              height: 450,
                              width: width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ///About Me.
                                  Text(
                                    'About Me',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: kTitleFont,
                                        fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 700,
                                    height: 400,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            ///About Text.
                                            Container(
                                              width: 450,
                                              child: Text(
                                                "\t\t I'm a Computer Engineering Student "
                                                "in the final year of the degree. My "
                                                "interest in creating new things lead "
                                                "me to programming. I've been programming "
                                                "for more than four years. "
                                                "I have a passion for creating innovative "
                                                "Machine Learning apps and API's. "
                                                "I have built a number of Apps, websites and "
                                                "ML project over the years. Have a look at them below. ",
                                                style: TextStyle(
                                                    color: kTextColor,
                                                    fontFamily: kPrimaryFont,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 50,
                                            ),

                                            ///Experience.
                                            Card(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              child: Container(
                                                height: 200,
                                                width: 150,
                                                color: Colors.deepPurple[200],
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '04',
                                                      style: TextStyle(
                                                        fontFamily: kTitleFont,
                                                        fontSize: 50,
                                                        color: Colors.white,
                                                        shadows: <Shadow>[
                                                          Shadow(
                                                            offset: Offset(
                                                                10.0, 10.0),
                                                            blurRadius: 3.0,
                                                            color: Colors
                                                                .deepPurple,
                                                          ),
                                                          Shadow(
                                                            offset: Offset(
                                                                10.0, 10.0),
                                                            blurRadius: 8.0,
                                                            color: Colors
                                                                .deepPurple,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 15.0),
                                                      child: Text(
                                                        'Years of Experience',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: kTextColor,
                                                            fontFamily:
                                                                kPrimaryFont,
                                                            fontSize: 20),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),

                                        ///About Text in French.
                                        Container(
                                          width: 475,
                                          child: Text(
                                            "\t\t Je suis étudiant en génie informatique en dernière année du diplôme."
                                            "Mon intérêt pour la création de nouvelles choses m'a conduit à la programmation."
                                            "Je programme depuis plus de quatre ans."
                                            "J'ai une passion pour la création d'applications et d'API d'apprentissage automatique innovantes."
                                            "J'ai construit un certain nombre d'applications, de sites Web et de projets ML au fil des ans. Regardez-les ci-dessous. ",
                                            style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: kPrimaryFont,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )

                        : ///All of About me in a Column of three.
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 700, maxWidth: 700),
                            child: Container(
                              height: 700,
                              width: width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ///About Me.
                                  Text(
                                    'About Me',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: kTitleFont,
                                        fontSize: 40),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 700,
                                    height: 600,
                                    child: Column(
                                      children: [
                                        ///About Text.
                                        Container(
                                          width: 450,
                                          height: 150,
                                          child: Text(
                                            "\t\t I'm a Computer Engineering Student "
                                            "in the final year of the degree. My "
                                            "interest in creating new things lead "
                                            "me to programming. I've been programming "
                                            "for more than four years. "
                                            "I have a passion for creating innovative "
                                            "Machine Learning apps and API's. "
                                            "I have built a number of Apps, websites and "
                                            "ML project over the years. Have a look at them below. ",
                                            style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: kPrimaryFont,
                                                fontSize: 16),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),

                                        ///Experience.
                                        Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10.0)),
                                          child: Container(
                                            height: 200,
                                            width: 150,
                                            color: Colors.deepPurple[200],
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '04',
                                                  style: TextStyle(
                                                    fontFamily: kTitleFont,
                                                    fontSize: 50,
                                                    color: Colors.white,
                                                    shadows: <Shadow>[
                                                      Shadow(
                                                        offset: Offset(
                                                            10.0, 10.0),
                                                        blurRadius: 3.0,
                                                        color: Colors
                                                            .deepPurple,
                                                      ),
                                                      Shadow(
                                                        offset: Offset(
                                                            10.0, 10.0),
                                                        blurRadius: 8.0,
                                                        color: Colors
                                                            .deepPurple,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 15.0),
                                                  child: Text(
                                                    'Years of Experience',
                                                    textAlign:
                                                        TextAlign.center,
                                                    style: TextStyle(
                                                        color: kTextColor,
                                                        fontFamily:
                                                            kPrimaryFont,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          height: 50,
                                        ),

                                        ///About Text in French.
                                        Container(
                                          width: 475,
                                          height: 150,
                                          child: Text(
                                            "\t\t Je suis étudiant en génie informatique en dernière année du diplôme."
                                                "Mon intérêt pour la création de nouvelles choses m'a conduit à la programmation."
                                                "Je programme depuis plus de quatre ans."
                                                "J'ai une passion pour la création d'applications et d'API d'apprentissage automatique innovantes."
                                                "J'ai construit un certain nombre d'applications, de sites Web et de projets ML au fil des ans. Regardez-les ci-dessous. ",
                                            style: TextStyle(
                                                color: kTextColor,
                                                fontFamily: kPrimaryFont,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
              ),

              ///Services Offered.
              Padding(
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
                                                        'Mobile Application Development',
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
                                height: width > 700 ? 1000 : 1230,
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
                                                      'Mobile Application Development',
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
              ),

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

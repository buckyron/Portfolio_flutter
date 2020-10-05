import 'package:flutter/material.dart';
import 'constants.dart';


class FeedbackReceived extends StatelessWidget {
  const FeedbackReceived({
    Key key,
    @required this.width,
    @required this.feedbackKey
  }) : super(key: key);

  final double width;
  final GlobalKey feedbackKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      key: feedbackKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Feedback Received ',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: kTitleFont,
                      fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        child: Container(
                          height: 300,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/profile.png'))),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  child: Text(
                                    'Hari Vigneshwaran is one of the most '
                                        'motivated freelancer I’ve ever '
                                        'worked with. He is creative, attentive'
                                        ' to details and finished work before '
                                        'deadline. I can’t wait to hire '
                                        'Hari Vigneshwaran again for future works.',
                                    style: TextStyle(
                                        fontFamily: kPrimaryFont                                            ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  'Ganesh. S',
                                  style: TextStyle(
                                      fontFamily: kTitleFont,
                                      fontSize: 16,
                                      color: kPrimaryColor
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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

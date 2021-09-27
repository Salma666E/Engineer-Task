import 'package:flutter/material.dart';
import 'package:taskapp/models/custom_style.dart';
import 'package:taskapp/utilities/url_launcher.dart';
import 'package:taskapp/widgets/custom_text.dart';

class RankingCard extends StatelessWidget {
  const RankingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.black,
      elevation: 20,
      margin: const EdgeInsets.only(left: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/hshtag.jpg', width: 20,)),
            const SizedBox(
              height: 15,
            ),
            CustomText('Join the conversation on slack', custom_style_title),
            const SizedBox(
              height: 15,
            ),
            CustomText(
                'Stay up to date an the latest news and special programs that only take place whthin the slack channel',
                custom_style_body),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 20,
                    child: TextButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                              (Set<MaterialState> states) {
                            final Color color =
                                states.contains(MaterialState.pressed)
                                    ? Colors.blue
                                    : Colors.grey;
                            return BorderSide(color: color, width: 1);
                          }),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black87),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text(
                          'REMIND LATER',
                          style: custom_text_small,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 20,
                    child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: ()=>launchInBrowser('https://slack.com/'),
                        child: Text(
                          'JOIN NOW',
                          style: custom_text_small,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

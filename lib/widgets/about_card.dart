import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:taskapp/models/custom_style.dart';

import 'custom_text.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key? key}) : super(key: key);

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
            Row(
              children: [
                Image.asset(
                  'assets/images/list_tile_img.png',
                  width: 20,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Alice Martin',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'S hours ago',
                        style: TextStyle(fontSize: 6),
                      ),
                    ],
                  ),
                )
              ],
            ), // ///
            const SizedBox(
              height: 15,
            ),
            CustomText(
                'Desidn and develop a website for an education platform focusing an the growth of children.',
                custom_style_body),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(children: [
              SizedBox(
                height: 20,
                width: 35,
                child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Text(
                      '1.2 ETH',
                      style: custom_text_small,
                    )),
              ),
              const SizedBox(
                width: 2,
              ),
              SizedBox(
                height: 20,
                width: 35,
                child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.redAccent),
                    ),
                    onPressed: () {},
                    child: Text(
                      '0.3 BTC',
                      style: custom_text_small,
                    )),
              ),
              const SizedBox(
                width: 3,
              ),
              const Expanded(child: Text("\$760")),
            ]),
          ],
        ),
      ),
    );
  }
}

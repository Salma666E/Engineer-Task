import 'package:flutter/material.dart';
import 'package:taskapp/utilities/url_launcher.dart';

class ImageIconWdg extends StatelessWidget {
  const ImageIconWdg(this.img, this.launcher, {Key? key}) : super(key: key);
  final String img;
  final String launcher;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchInBrowser(launcher),
      child: Container(
        width: 45,
        height: 20,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(img),
                alignment: Alignment.center,
                fit: BoxFit.fill)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskapp/providers/theme_provider.dart';
import 'package:taskapp/screens/auth_screen.dart';
import 'package:taskapp/widgets/about_card.dart';
import 'package:taskapp/widgets/client_saying_card.dart';
import 'package:taskapp/widgets/custom_text.dart';
import 'package:taskapp/widgets/ranking_card.dart';
import '/widgets/custom_card.dart';
import '/models/custom_style.dart';
import '../widgets/img_icon.dart';

class HomaScreen extends StatelessWidget {
  const HomaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: deviceSize.width,
          height: deviceSize.height,
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/HomePagePackground.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Robot Valley'),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AuthScreen(),
                                ));
                          }, //Not working yet
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 15),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Try free',
                                  style: color_white,
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: deviceSize.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText('Task Management and list Tool',
                              custom_text_style1),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomText(
                              'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.',
                              custom_text_style2),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: deviceSize.width * 0.5,
                          child: TextField(
                            controller: _emailController,
                            maxLines: 1,

                            autocorrect: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Name@Company.com',
                              hintStyle: fontSize_textfield,
                              labelStyle: fontSize_textfield,
                              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Provider.of<ThemeProvider>(context, listen: true).darkTheme? Colors.white: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AuthScreen(),
                                ));}, //Not working yet
                          child: Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 25),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Try for free',
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 12),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: const <Widget>[
                          ImageIconWdg('assets/images/icon1.jpg',
                              'https://www.cartoonnetworkarabic.com/'),
                          ImageIconWdg('assets/images/icon2.jpg',
                              'https://www.booking.com/'),
                          ImageIconWdg('assets/images/icon3.jpg',
                              'https://www.dropbox.com/'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: const <Widget>[
                          ImageIconWdg('assets/images/icon4.jpg',
                              'https://www.toshiba.com/tai/'),
                          ImageIconWdg(
                              'assets/images/icon5.jpg', 'https://slack.com/'),
                          ImageIconWdg('assets/images/icon6.jpg',
                              'https://www.netflix.com/'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: const <Widget>[
                          ImageIconWdg('assets/images/icon7.jpg',
                              'https://www.spotify.com/'),
                          ImageIconWdg('assets/images/icon8.jpg',
                              'https://www.coca-cola.com/'),
                          ImageIconWdg('assets/images/icon9.jpg',
                              'https://www.redbull.com/'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      child: Center(
                          child: Text(
                        'Key benefit of using task management software',
                        textAlign: TextAlign.center,
                        style: custom_style_title,
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CustomCard(
                            "assets/images/icon-card1.jpg",
                            deviceSize.width * 0.25,
                            "Keep tasks in one place",
                            "Save time avoid losing work and information, delegation, and track tasks to stay an schedule"),
                        CustomCard(
                            "assets/images/icon-card2.jpg",
                            deviceSize.width * 0.25,
                            "Prioritize your work",
                            "Tracking tasks allows everyone to understand which are more important orr require more time, so"),
                        CustomCard(
                            "assets/images/icon-card3.jpg",
                            deviceSize.width * 0.25,
                            "Improve collaboration",
                            "Tracking tasks allows everyone to understand which are more important orr require more time, so"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: deviceSize.width * 0.4,
                          child: Image.asset('assets/images/cards.png',
                              width: deviceSize.width * 0.3),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                  'Why do you need task management software?',
                                  custom_text_style1),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomText(
                                  'Do you waste time organizing sticky notes, searching your email and apps for to-dos, and figuring out what to work on first?\nThen you need one solution to prioritize your tasks, manage your time, and meet your deadlines.',
                                  custom_text_style2),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  CustomText('LEARN MORE', custom_text_style3),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Center(
                                        child: Image.asset(
                                            'assets/images/arrow.jpg')),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 300,
                          right: 100,
                          width: deviceSize.width * 0.4,
                          child: AboutCard(),
                        ),
                        Positioned(
                          top: 120,
                          right: 0,
                          width: deviceSize.width * 0.4,
                          child: RankingCard(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CustomText(
                                  'Seamless Team Workflow & Efficient Task Management',
                                  custom_text_style1),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 150.0),
                              child: CustomText(
                                  'Do you waste time organizing sticky notes, searching your email and apps for to-dos, and figuring out what to work on first?\nThen you need one solution to prioritize your tasks, manage your time, and meet your deadlines.',
                                  custom_text_style2),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                CustomText('LEARN MORE', custom_text_style3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Center(
                                      child: Image.asset(
                                          'assets/images/arrow.jpg')),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 200,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      'What clients are saying?',
                      style: fontSize_textfield,
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: ClientSayingCard(
                              "\"This plugin is amazing with the current version. I can't imagine it. how cool will it be whene you finish the all.",
                              'assets/images/client_img1.png',
                              'Michale Smith',
                              'CDO at New Company'),
                        ),
                        Expanded(
                          flex: 1,
                          child: ClientSayingCard(
                              "\"This plugin is amazing with the current version. I can't imagine it. how cool will it be whene you finish the all.",
                              'assets/images/client_img2.png',
                              'Michale Smith',
                              'CDO at New Company'),
                        ),
                        Expanded(
                          flex: 1,
                          child: ClientSayingCard(
                              "\"This plugin is amazing with the current version. I can't imagine it. how cool will it be whene you finish the all.",
                              'assets/images/client_img2.png',
                              'Michale Smith',
                              'CDO at New Company'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1.2,
                    ),
                    Center(
                        child: Text(
                      'Get better work done',
                      style: custom_text_style1,
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                        child: Text(
                      'See why millions of people across 195 countries use Robot Valley.',
                      textAlign: TextAlign.center,
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: deviceSize.width * 0.5,
                          child: TextField(
                            controller: _emailController,
                            maxLines: 1,
                            autocorrect: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Name@Company.com',
                              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Provider.of<ThemeProvider>(context, listen: true).darkTheme? Colors.white: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                              hintStyle: fontSize_textfield,
                              labelStyle: fontSize_textfield,
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AuthScreen(),
                                ));}, //Not working yet
                          child: Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 25),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Try for free',
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 12),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

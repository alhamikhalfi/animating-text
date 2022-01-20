// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_website/themed.dart';
import 'package:fluttter_website/widget/centered_view.dart';
import 'package:fluttter_website/widget/nav_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [Expanded(child: HomeTitle())],
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.center
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 24
              : 40;

      return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child:
                  AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
                TypewriterAnimatedText(
                  'Hi, my name is Khalfi alhami. I am Flutter front end developer,',
                  speed: Duration(milliseconds: 99),
                  textStyle: titleBlack.copyWith(fontSize: titleSize),
                  textAlign: textAlignment,
                ),
                TypewriterAnimatedText(
                  'living in Bremerhaven, Germany',
                  speed: Duration(milliseconds: 99),
                  textStyle: titleBlack.copyWith(fontSize: titleSize),
                  textAlign: textAlignment,
                )
              ]),
            ),
          ],
        ),
      );
    });
  }
}

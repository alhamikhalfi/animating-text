import 'package:flutter/material.dart';
import 'package:fluttter_website/home_view.dart';
import 'package:fluttter_website/widget/centered_view.dart';
import 'package:fluttter_website/widget/nav_bar.dart';

class ContactView extends StatelessWidget {
  const ContactView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [NavBar(),
          Expanded(
            child: ContactPage())],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('How u reach me?'
      
    );
  }
}
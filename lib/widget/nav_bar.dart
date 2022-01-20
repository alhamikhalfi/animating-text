// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttter_website/widget/nav_bar_mobile.dart';
import 'package:fluttter_website/widget/nav_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.black, fontSize: 32),
    );
  }
}


//  SizedBox(
//       height: 100,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text(
//             'KA',
//             style: TextStyle(color: Colors.black, fontSize: 32),
//           ),
//           Row(
//             children: [
//               _NavBarItem('About'),
//               const SizedBox(
//                 width: 60,
//               ),
//               _NavBarItem('Portfolio'),
//               SizedBox(
//                 width: 60,
//               ),
//               _NavBarItem('Contact'),
//             ],
//           )
//         ],
//       ),
//     );
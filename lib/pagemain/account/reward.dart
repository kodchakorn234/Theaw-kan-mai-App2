import 'package:finalprojectnew/pagemain/account/account.dart';
import 'package:finalprojectnew/pagemain/fav.dart';
import 'package:finalprojectnew/pagemain/homepage/homepage.dart';
import 'package:finalprojectnew/pagemain/quest.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class rewardpage extends StatefulWidget {
  const rewardpage({super.key});

  @override
  State<rewardpage> createState() => _rewardpageState();
}

class _rewardpageState extends State<rewardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: questpage());
  }
}

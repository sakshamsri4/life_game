import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
     bool value=false;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Icon(CupertinoIcons.phone),
            const Icon(CupertinoIcons.mail),
            const Icon(CupertinoIcons.heart),
            const Icon(CupertinoIcons.share),
            const Icon(CupertinoIcons.book),
            const Icon(CupertinoIcons.printer),
            Switch.adaptive(value: value, onChanged:(v)
            {
              setState(() {
                value=!value;
              });
            }),
          ],
        ),
      ),
    );
  }
}

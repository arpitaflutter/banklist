import 'package:flutter/material.dart';

import 'bank1.dart';
import 'home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        'bank1':(context) => bank1(),
      },
    ),
  );
}
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Adddata.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        'data':(context) => Adddata(),
      },
    ),
  );
}
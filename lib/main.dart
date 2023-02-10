import 'package:flutter/material.dart';
import 'package:listview_exam/update.dart';

import 'Homepage.dart';
import 'data.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        'add_data':(context) => data(),
        'update':(context) => update(),
      },
    ),
  );
}
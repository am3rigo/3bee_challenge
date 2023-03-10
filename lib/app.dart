import 'package:flutter/material.dart';
import 'package:threebee_challenge/features/apiaries/apiaries_overview_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ApiariesOverviewPage(),
    );
  }
}

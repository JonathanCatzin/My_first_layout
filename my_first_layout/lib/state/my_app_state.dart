import 'package:flutter/material.dart';
import 'package:my_first_layout/widgets/imagen_section.dart';

import '../widgets/button_section.dart';
import '../widgets/text_section.dart';
import '../widgets/title_section.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: ListView(
          children: const [
            ImagenSection(),
            TitleSection(),
            ButtonSection(),
            TextSection(),
        ],
        ),
      ),
    );
  }
}
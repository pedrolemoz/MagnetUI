import 'package:flutter/material.dart';
import 'package:magnet_ui/magnet_ui.dart';

import 'pages/buttons/buttons_page.dart';
import 'pages/initial/initial_page.dart';
import 'pages/text_fields/text_fields_page.dart';

void main() => runApp(const MagnetUI());

class MagnetUI extends StatefulWidget {
  const MagnetUI({Key? key}) : super(key: key);

  @override
  State<MagnetUI> createState() => _MagnetUIState();
}

class _MagnetUIState extends State<MagnetUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        InitialPage.id: (context) => const InitialPage(),
        ButtonsPage.id: (context) => const ButtonsPage(),
        TextFieldsPage.id: (context) => const TextFieldsPage(),
      },
    );
  }
}

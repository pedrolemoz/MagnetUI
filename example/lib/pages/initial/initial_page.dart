import 'package:flutter/material.dart';
import 'package:magnet_ui/magnet_ui.dart';

import '../buttons/buttons_page.dart';
import '../text_fields/text_fields_page.dart';

class InitialPage extends StatelessWidget {
  static const id = '/';

  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Magic UI')),
      body: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed(ButtonsPage.id),
              text: 'Go to buttons page',
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(TextFieldsPage.id),
              text: 'Go to text fields page',
            ),
          ],
        ),
      ),
    );
  }
}

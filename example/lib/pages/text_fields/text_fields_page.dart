import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class TextFieldsPage extends StatelessWidget {
  static const id = '/text_fields_page';

  const TextFieldsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Fields'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              tooltip: 'Back',
              splashRadius: 20,
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(
                UniconsLine.arrow_left,
                size: 24,
              ),
            );
          },
        ),
      ),
    );
  }
}

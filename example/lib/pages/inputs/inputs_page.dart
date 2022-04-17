import 'package:flutter/material.dart';
import 'package:magnet_ui/magnet_ui.dart';
import 'package:unicons/unicons.dart';

class InputsPage extends StatelessWidget {
  static const id = '/inputs_page';

  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Input text',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          const InputText(hintText: 'Text field'),
        ],
      ),
    );
  }
}

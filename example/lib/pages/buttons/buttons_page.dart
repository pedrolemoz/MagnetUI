import 'package:flutter/material.dart';
import 'package:magnet_ui/components/buttons/icon_location.dart';
import 'package:magnet_ui/magnet_ui.dart';
import 'package:unicons/unicons.dart';

class ButtonsPage extends StatelessWidget {
  static const id = '/buttons';

  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
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
            'Filled button',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    text: 'Only text',
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    text: 'Text and icon',
                    enableIcon: true,
                    icon: UniconsLine.arrow_right,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: () {},
            text: 'Text and icon, inverted',
            enableIcon: true,
            icon: UniconsLine.arrow_left,
            iconLocation: IconLocation.afterText,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tipos de Botones')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Elevated Button'),
              icon: const Icon(Icons.accessibility_new),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button'),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              label: const Text('Filled'),
              icon: const Icon(Icons.zoom_in),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Outlined'),
              icon: const Icon(Icons.youtube_searched_for_outlined),
            ),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Text'),
              icon: const Icon(Icons.g_mobiledata),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              tooltip: 'Icon Button',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.primary,
                ),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

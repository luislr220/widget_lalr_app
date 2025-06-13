import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                if (Platform.isAndroid || Platform.isIOS) {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Elit anim labore minim excepteur anim do.'),
                    ],
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Dialogo no soportado'),
                      action: SnackBarAction(
                        label: 'Aceptar',
                        onPressed: () {},
                      ),
                      duration: const Duration(seconds: 3),
                      showCloseIcon: true,
                      backgroundColor: Colors.blueAccent[100],
                    ),
                  );
                }
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Aceptar', onPressed: () {}),
        duration: const Duration(seconds: 3),
        showCloseIcon: true,
        backgroundColor: Colors.blueAccent[100],
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: Text(
          'Nisi excepteur laboris mollit deserunt sit magna irure amet nulla pariatur. Do anim enim pariatur duis commodo. Aliquip aute ipsum ipsum mollit voluptate ullamco officia. Non anim enim ea eu officia eiusmod labore officia sunt fugiat ea cupidatat exercitation ea. Cupidatat nulla culpa culpa officia aliquip nulla eiusmod eiusmod pariatur exercitation eu eiusmod consectetur elit. Sunt dolore ex occaecat ipsum Lorem nulla deserunt pariatur officia dolor irure ullamco. Quis magna quis excepteur incididunt.',
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }
}

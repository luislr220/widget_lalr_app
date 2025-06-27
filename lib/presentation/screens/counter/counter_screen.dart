import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_lalr_app/presentation/providers/couter_provider.dart';
import 'package:widget_lalr_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  /* 
  GESTOR DE ESTADO 
  Son los valores actuales de variables, clases y objetos modificados
  por la aplicación y el usuario.
  */

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(couterProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Riverpod'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
            icon: isDarkMode
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(couterProvider.notifier).update((state) => state + 1);
          ref.read(couterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

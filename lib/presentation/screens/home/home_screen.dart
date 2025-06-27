import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_lalr_app/config/menu/menu_items.dart';
import 'package:widget_lalr_app/presentation/widgets/side_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalObjectKey<ScaffoldState>('home_scaffold');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funciones Basicas'),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _Homeview(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _Customlisttitle(menuItem: menuItem);
      },
    );
  }
}

class _Customlisttitle extends StatelessWidget {
  const _Customlisttitle({required this.menuItem});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: color.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios, color: color.primary),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}

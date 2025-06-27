import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Contador Riverpod',
    subTitle: 'Introducción a River',
    link: '/counter-river',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones',
    link: '/buttons',
    icon: Icons.smart_button,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Tutorial',
    subTitle: 'Tutorial basico de una app movil',
    link: '/tutorial',
    icon: Icons.accessibility,
  ),
  MenuItem(
    title: 'Animación',
    subTitle: 'Pantalla con animaciones',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'App Tutorial',
    subTitle: 'Tutorial para la app',
    link: '/appTutorial',
    icon: Icons.accessibility,
  ),
  MenuItem(
    title: 'Scroll Infinito',
    subTitle: 'Carga de datos de forma infinita',
    link: '/infinitiScroll',
    icon: Icons.list,
  ),
  MenuItem(
    title: 'Paneles de progreso',
    subTitle: 'Muestra de progreso',
    link: '/progress',
    icon: Icons.priority_high,
  ),
  MenuItem(
    title: 'Snackbar',
    subTitle: 'Muestra de mensajes breves',
    link: '/snackbar',
    icon: Icons.message,
  ),
  MenuItem(
    title: 'Controls UI',
    subTitle: 'Controles de la interfaz de usuario',
    link: '/uiControls',
    icon: Icons.verified_user_sharp,
  ),
  MenuItem(
    title: 'Cambiar Tema',
    subTitle: 'Cambio de tema de la aplicación.',
    link: '/theme-change',
    icon: Icons.color_lens,
  ),
];

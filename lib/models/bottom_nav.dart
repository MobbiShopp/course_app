import 'package:flutter/material.dart';

class BottomNav {
  Icon icon;
  Icon activeIcon;
  String label;

  BottomNav({
    required this.label,
    required this.activeIcon,
    required this.icon,
  });
}

var bottomBar = [
  BottomNav(
    label: "Featured",
    activeIcon: const Icon(Icons.star),
    icon: const Icon(Icons.star_outline),
  ),
  BottomNav(
    label: "Learning",
    activeIcon: const Icon(Icons.play_circle),
    icon: const Icon(Icons.play_circle_outline_outlined),
  ),
  BottomNav(
    label: "Favorites",
    activeIcon: const Icon(Icons.favorite),
    icon: const Icon(Icons.favorite_border),
  ),
  BottomNav(
    label: "Settings",
    activeIcon: const Icon(Icons.settings),
    icon: const Icon(Icons.settings_outlined),
  ),
];

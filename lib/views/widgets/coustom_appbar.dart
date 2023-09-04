import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_search_icon.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CoustomSearchIcon(icon: icon),
      ],
    );
  }
}

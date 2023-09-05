import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_icon.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar(
      {super.key, required this.title, this.onPressed, required this.icon});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
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
        CoustomIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}

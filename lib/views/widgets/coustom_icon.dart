import 'package:flutter/material.dart';

class CoustomIcon extends StatelessWidget {
  const CoustomIcon({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 28,
              color: Colors.white,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(),
        ],
      ),
    );
  }
}
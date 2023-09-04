import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_boutton.dart';
import 'package:note_app/views/widgets/coustom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 32),
            CustomButton(
              text: 'Add Note',
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

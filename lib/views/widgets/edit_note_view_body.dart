import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_appbar.dart';
import 'package:note_app/views/widgets/coustom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CoustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hintText: 'Edit Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Edit Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

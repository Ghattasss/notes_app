import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_boutton.dart';
import 'package:note_app/views/widgets/coustom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title, subtitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            onSaved: (value) {
              subtitle = value;
            },
            maxLines: 5,
          ),
          const SizedBox(height: 32),
          CustomButton(
            text: 'Add Note',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

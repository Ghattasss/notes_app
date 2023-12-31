import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/addnotecubit/add_note_cubit.dart';
import 'package:note_app/cubits/notescubit/notes_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).getNotes();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Note Added'),
                duration: Duration(seconds: 1),
              ),
            );
            Navigator.pop(context);
          } else if (state is AddNoteError) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Falid Add Note'),
              duration: Duration(seconds: 2),
            ));
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}

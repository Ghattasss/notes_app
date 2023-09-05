import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notescubit/notes_cubit.dart';
import 'package:note_app/views/widgets/coustom_appbar.dart';
import 'package:note_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CoustomAppBar(
            title: 'Notes',
            icon: Icons.task,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

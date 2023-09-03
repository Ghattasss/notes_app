import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_appbar.dart';
import 'package:note_app/views/widgets/coustom_card_note.dart';
import 'package:note_app/views/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CoustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

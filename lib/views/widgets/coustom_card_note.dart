import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CoustomNoteCard extends StatelessWidget {
  const CoustomNoteCard({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  noteModel.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    noteModel.subtitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                  },
                  color: Colors.black,
                  iconSize: 26,
                  icon: const Icon(Icons.delete),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(noteModel.date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                    )),
              ),
            ],
          )),
    );
  }
}

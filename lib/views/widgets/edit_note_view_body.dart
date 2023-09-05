import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/cubits/notescubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_List_view.dart';
import 'package:note_app/views/widgets/coustom_appbar.dart';
import 'package:note_app/views/widgets/coustom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CoustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Note Updated'),
                duration: Duration(seconds: 2),
              ));
              BlocProvider.of<NotesCubit>(context).getNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 40,
          ),
          EditNoteColorList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                ischoosen: currentindex == index ? true : false,
                color: kcolors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

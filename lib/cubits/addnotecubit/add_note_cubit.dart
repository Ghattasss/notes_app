import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color noteColor = const Color(0xffAC3931);
  addNoteToHive(NoteModel note) async {
    note.color = noteColor.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteSBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}

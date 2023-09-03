import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/coustom_appbar.dart';

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
          SizedBox(
            height: 20,
          ),
          NoteCard(),
        ],
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Note Title',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  'Note Subtitle',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                color: Colors.black,
                iconSize: 26,
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('may 20, 2021',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16,
                  )),
            ),
          ],
        ));
  }
}

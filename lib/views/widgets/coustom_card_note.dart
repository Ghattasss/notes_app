import 'package:flutter/material.dart';

class CoustomNoteCard extends StatelessWidget {
  const CoustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(15),
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

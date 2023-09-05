import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/addnotecubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.ischoosen, required this.color});
  final bool ischoosen;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ischoosen
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentindex = 0;

  List<Color> colors = [
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff537D8D),
    const Color(0xff482C3D),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  BlocProvider.of<AddNoteCubit>(context).noteColor =
                      colors[index];
                  currentindex = index;
                });
              },
              child: ColorItem(
                ischoosen: currentindex == index ? true : false,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

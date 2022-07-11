import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/course_details.dart';

class LessonList extends StatelessWidget {
  const LessonList({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final CourseDetails widget;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const SizedBox(height: kPadding / 2);
        },
        itemCount: widget.category.lessonCount,
        itemBuilder: ((context, i) {
          Random rnd = Random();
          return ListTile(
            enableFeedback: true,
            onTap: () {},
            leading: const Icon(
              Icons.play_circle_fill,
              color: kPrimaryColor,
              size: 42,
            ),
            title: Text(
              i == 0 ? 'Introduction' : 'Lesson $i',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:
                Text('${rnd.nextInt(50) + 5} min ${rnd.nextInt(55) + 1} sec'),
            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 30,
            ),
          );
        }));
  }
}

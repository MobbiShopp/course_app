import 'package:course_app/screens/course_details.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/category.model.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final Category cat;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: cat.id,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(kPadding)),
              image: DecorationImage(
                image: NetworkImage(cat.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(category: cat),
                ),
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: kPadding),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black, Colors.black.withOpacity(0)],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(kPadding)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    cat.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "${cat.lessonCount} Courses",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

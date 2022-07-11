import 'package:flutter/material.dart';

import '../constants.dart';

class CourseMeta extends StatelessWidget {
  const CourseMeta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                  children: [
                    TextSpan(text: 'Created by '),
                    TextSpan(
                        text: 'John Doe',
                        style: TextStyle(
                          color: kPrimaryColor,
                        )),
                  ]),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: const [
                    Icon(Icons.star_border, size: 22, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      '4.8',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(width: kPadding),
                Row(
                  children: const [
                    Icon(Icons.access_time, size: 22, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      '72 hours',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        const Text(
          '\$40',
          style: TextStyle(
            fontSize: 26,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

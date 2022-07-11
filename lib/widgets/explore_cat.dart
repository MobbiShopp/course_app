import 'package:flutter/material.dart';

import '../constants.dart';

class ExploreCat extends StatelessWidget {
  const ExploreCat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Explore Categories",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

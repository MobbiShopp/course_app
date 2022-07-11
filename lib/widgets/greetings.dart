import 'package:course_app/screens/search_course.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding:
            const EdgeInsets.only(top: 30, bottom: 40, right: 30, left: 30),
        // height: 300,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Greeting text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              //Bell Button
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: Colors.white12,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  splashColor: Colors.white12,
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              //
            ],
          ),
          const SizedBox(height: kPadding * 2),
          // Search Input
          Material(
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () =>
                  showSearch(context: context, delegate: SearchCourse()),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Search your topic',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.mic_none_outlined,
                      color: kPrimaryColor,
                      size: 28,
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

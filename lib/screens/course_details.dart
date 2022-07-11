import 'package:course_app/constants.dart';
import 'package:course_app/models/category.model.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key, required this.category});
  final Category category;

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  int _currentTab = 0;
  void changeTab(int i) {
    setState(() {
      _currentTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: widget.category.id,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(widget.category.image),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              const SizedBox(height: kPadding),
              //Course meta
              const CourseMeta(),
              const SizedBox(height: kPadding * 1.5),
              // Tabs
              TabButtons(
                  category: widget.category,
                  changeTab: changeTab,
                  currentTab: _currentTab),
              const SizedBox(height: kPadding * 1.5),
              _currentTab == 0
                  ? LessonList(widget: widget)
                  : const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
            ],
          ),
        ),
      )),
    );
  }
}

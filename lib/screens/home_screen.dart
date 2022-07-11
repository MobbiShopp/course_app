import 'package:course_app/constants.dart';
import 'package:course_app/models/bottom_nav.dart';
import 'package:course_app/models/category.model.dart';
import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentNav = 0;
  void changNav(int i) {
    setState(() {
      _currentNav = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            onTap: changNav,
            currentIndex: _currentNav,
            iconSize: 28,
            backgroundColor: Colors.white,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(fontSize: 11),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            showUnselectedLabels: true,
            items: bottomBar
                .map((e) => BottomNavigationBarItem(
                    icon: e.icon, activeIcon: e.activeIcon, label: e.label))
                .toList()),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          //Greeting
          const Greeting(),
          const SizedBox(height: kPadding * 1.5),
          //Category header
          const ExploreCat(),
          //Category grid
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: kPadding,
                  mainAxisSpacing: kPadding,
                ),
                itemCount: categories.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  var cat = categories[index];
                  return CourseCard(cat: cat);
                }),
          ),
        ]),
      )),
    );
  }
}

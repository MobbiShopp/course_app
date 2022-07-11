import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/category.model.dart';

class TabButtons extends StatefulWidget {
  const TabButtons({
    Key? key,
    required this.category,
    required this.currentTab,
    required this.changeTab,
  }) : super(key: key);

  final Category category;
  final int currentTab;
  final Function changeTab;

  @override
  State<TabButtons> createState() => _TabButtonsState();
}

class _TabButtonsState extends State<TabButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: widget.currentTab == 0 ? kPrimaryColor : Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () => widget.changeTab(0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Playlist (${widget.category.lessonCount})',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          widget.currentTab == 0 ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: widget.currentTab == 1 ? kPrimaryColor : Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () => widget.changeTab(1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Description',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          widget.currentTab == 1 ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

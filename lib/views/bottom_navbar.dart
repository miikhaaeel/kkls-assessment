import 'package:flutter/material.dart';
import 'package:kkls_assessment/views/exam_prep_screen.dart';
import 'package:kkls_assessment/views/practice_selection_screen.dart';
import 'package:kkls_assessment/views/question_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    ExamPreparationScreen(),
    QuestionScreen(),
    QuestionScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      bottomNavigationBar: CustomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}

class CustomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<Color> color = [
    Color(0xFF33F699), // Tab 0 background
    Color(0xFF070707), // Tab 1 background
    Color(0xFF070707), // Tab 2 background
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 5),
      color: color[widget.currentIndex],

      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 2,
          children: [
            _buildNavItem(Icons.home_outlined, 0, 'Home'),
            _buildNavItem(Icons.school_outlined, 1, "Done"),

            _buildNavItem(Icons.notifications_none, 2, 'Practice'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, text) {
    bool isActive = widget.currentIndex == index;

    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Color(0xFF242424),
          shape: BoxShape.rectangle,
          borderRadius: isActive
              ? BorderRadius.circular(60)
              : BorderRadius.circular(999),
        ),
        child: Row(
          spacing: 1,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: Colors.white),
            isActive
                ? Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

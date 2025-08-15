import 'package:flutter/material.dart';
import 'package:kkls_assessment/screen_config.dart';
import 'package:kkls_assessment/views/colors.dart';
import 'package:kkls_assessment/widgets/home_widgets.dart';

class ExamPreparationScreen extends StatelessWidget {
  const ExamPreparationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello,\nAlexandra!",
                    style: TextStyle(
                      color: AppColors.appBarTextColor,
                      fontSize: (16.sp),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150",
                            ),
                          ),
                          SizedBox(width: (30.w)),
                        ],
                      ),
                      Positioned(right: 0, child: AppDrawerIconWidget()),
                    ],
                  ),
                ],
              ),
              SizedBox(height: (14.h)),

              // Title
              Text(
                "Social Studies",
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                "Exam Preparation",
                style: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF046332),
                  height: .7,
                ),
              ),
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "58",
                            style: TextStyle(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            " /100",
                            style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF046332),
                              height: .7,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Your recent score",
                        style: TextStyle(
                          fontSize: 14,
                          height: -0.3,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "More Details",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.arrow_outward_rounded, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 26),

              // Stat Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: StatCard("3", "/5 topics")),
                  const SizedBox(width: 8),
                  Expanded(child: StatCard("8", "/16 questions")),
                ],
              ),

              const SizedBox(height: 20),

          
              Container(
                height: 220.h,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TabChip("Social and society", false),
                          TabChip("Economics", true),
                          TabChip("Law", false),
                          TabChip("Social reform", false),
                        ],
                      
                      ),
                    ),  InfoRow("Overall Time Spent", "3h17 min"),
                        InfoRow("Variants Solved", "6/20"),
                        InfoRow("Mistakes Made", "28"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
